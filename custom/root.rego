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


package permit.custom

import future.keywords.in
import data.permit.policies
import data.permit.rbac

default allow := false

# List of CIDR ranges to check against
acl_ranges := ["216.41.240.0/24", "532.12.43.5/32"]

# Allow if the context input IP is within any of the ACL ranges
allow {
    not "rbac" in policies.__allow_sources
    print(policies.__allow_sources)
} else {
   not "check-ip" in rbac.allowing_roles
} else {
   ip_in_acl(input.context.ip_addr) #????????

}


# Function to check if the IP is in any of the ACL ranges
ip_in_acl(ip) {
    some range
    range := acl_ranges[_]
    net.cidr_contains(range, ip)
}
