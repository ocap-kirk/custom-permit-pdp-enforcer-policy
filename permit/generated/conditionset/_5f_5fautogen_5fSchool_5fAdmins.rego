package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset__5f_5fautogen_5fSchool_5fAdmins = false

userset__5f_5fautogen_5fSchool_5fAdmins {
	"School_Admins" in attributes.user.roles
}
