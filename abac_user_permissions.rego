package permit.abac_user_permissions

import data.permit.abac
import data.permit.generated.abac.utils

import future.keywords.in

# Return custom input for resource_instance and tenant
# Args:
# instance: key of resource_instances_and_tenants can be the key of resource instance or the key of tenant
# instance_data: value of resource_instances_and_tenants can be the value of resource instance or true in case of tenant(no use in case of tenant)
# resource_type: the resource type of resource_instance or tenant (used only in case of resource instance)
# user_key: user key
# parts: array with 2 items the first is the resource_type and the second is the resource key
# allowed_type: the resource type that supplied in the input
custom_input(instance, instance_data, user_key, parts, allowed_type) = result {
    # If it tenant resource
    data.tenants[instance] != null
    result := {
      "user": {"key": user_key},
      "resource": {
        "type": allowed_type,
        "tenant": instance
      }
    }
} else = result {
	# If it resource_instnace resource
    result :=  {
      "user": {"key": user_key},
      "resource": {
        "type": allowed_type,
        "key": parts[1],
        "tenant": instance_data.tenant
      }
    }

}


# Check if the resources types provided in the input match to resource_instance type
# or if the instace_data value is true (when true the tenant key
# from tenants_match_to_user_roles has a role that related to the user )
resource_instance_or_tenant_match_user(resource_type, allowed_type,instance_data ) {
    resource_type == allowed_type
} else {
    instance_data == true
}

# add prefix of __tenant if the resource is tenant and keep the same if it from resource instance family
add_prefix(instance_data, instance) = result {
    instance_data == true
    result := sprintf("__tenant:%s", [instance])

} else = result {
    result := instance
}


# Iterate over data.role_assigments and return set of all tenants that user related to in the format { "tenant_key" : true}
tenants_match_to_user_roles(user_key) = {tenant: true |
    role_assigment := data.role_assignments[sprintf("user:%s",[user_key])]
	some key, _ in role_assigment
		parts := split(key, ":")
    parts[0] == "__tenant"
		tenant := parts[1]
}
permissions[ps] {
    user_key := input.user.key
	# create an union set of all the resource instances and a tenants keys that user has a role on them
    resource_instances_and_tenants := object.union(data.resource_instances, tenants_match_to_user_roles(user_key))
	# implicit iteration over the resource_types input to check matching resource instnaces
    allowed_type := input.resource_types[_]
		some instance, instance_data in resource_instances_and_tenants
			parts := split(instance, ":")
			resource_type := parts[0]

			resource_instance_or_tenant_match_user(resource_type, allowed_type,instance_data )

			_input := custom_input(instance, instance_data, user_key, parts, allowed_type)
			matching_us := abac.matching_usersets with input as _input
			some userset in matching_us
				matching_rs := abac.matching_resourcesets with input as _input
				some resourceset in matching_rs
					actions := data.condition_set_rules[userset][resourceset][_input.resource.type]
					permissions := {p | action := actions[_]; p := sprintf("%s:%s", [_input.resource.type, action])}
					ps := {add_prefix(instance_data, instance): {"permissions": permissions, "userset": userset, "resourceset": resourceset}}}
