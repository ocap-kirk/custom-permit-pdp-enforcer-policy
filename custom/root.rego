# package permit.custom

# import future.keywords.in
# import data.permit.policies
# import data.permit.rbac

# default allow := false

# allow {
#     not "rbac" in policies.__allow_sources
#     print(policies.__allow_sources)
# } else {
#    not "tmp-admin" in rbac.allowing_roles
# } else {
#    time.now_ns() >= time.parse_rfc3339_ns("2023-01-01T00:00:00+02:00")
#    time.now_ns() <= time.parse_rfc3339_ns("2025-01-01T00:00:00+02:00")
# }


# package permit.custom

# import future.keywords.in
# import data.permit.policies
# import data.permit.rbac

# default allow := false

# # List of CIDR ranges to check against
# acl_ranges := ["216.41.240.0/24", "532.12.43.5/32"]

# # Allow if the context input IP is within any of the ACL ranges
# allow {
#     not "rbac" in policies.__allow_sources
#     print(policies.__allow_sources)
# } else {
#    not "check-ip" in rbac.allowing_roles
# } else {
#    print(policies.__allow_sources)
#    ip_in_acl_ranges(input.context.ip_addr) #????????

# }

# # Function to check if the IP is in any of the ACL ranges
# ip_in_acl_ranges(ip) {
#     some i
#     acl_ranges[i]  # Loop through each index of the list
#     net.cidr_contains(acl_ranges[i], ip)
# }

package permit.custom

import future.keywords.in
import data.permit.rbac
import data.roles
import data.resource_instances

default allow := false

allow {
   # Iterate over all user roles and get attributes for the role
   some role in rbac.allowing_roles
   role_attributes_foo := roles[role].attributes.foo  

   # Get attributes for the resource instance
   resource_id := sprintf("%s:%s", [input.resource.type, input.resource.key])
   resource_attributes_foo := resource_instances[resource_id].attributes.foo  

   #Compare the two
   role_attributes_foo == resource_attributes_foo  
}
