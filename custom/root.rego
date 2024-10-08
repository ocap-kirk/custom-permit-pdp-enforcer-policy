package permit.custom

import future.keywords.in
import data.permit.rbac
import data.roles
import data.resource_instances
import data.permit.policies

default allow := false

# # Restrict access to `tmp-admin` role within a certain time boundary.
# allow {
#     not "rbac" in policies.__allow_sources
#     print(policies.__allow_sources)
# } else {
#    not "tmp-admin" in rbac.allowing_roles
# } else {
#    time.now_ns() >= time.parse_rfc3339_ns("2023-01-01T00:00:00+02:00")
#    time.now_ns() <= time.parse_rfc3339_ns("2025-01-01T00:00:00+02:00")
# }








# # Allow if the context input IP is within a define range of ACLs
# # List of CIDR ranges to check against
# acl_ranges := ["216.41.240.0/24", "532.12.43.5/32"]

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








# iterate over all rbac.user_roles, fetch associated attributes for each role, and compare them with attributes from the resource_instances
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
