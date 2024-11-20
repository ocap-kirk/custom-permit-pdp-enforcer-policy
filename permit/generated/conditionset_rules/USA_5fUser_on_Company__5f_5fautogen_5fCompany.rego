package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default USA_5f5fUser_5fon_5fCompany_5f_5f5f_5f5fautogen_5f5fCompany = false

USA_5f5fUser_5fon_5fCompany_5f_5f5f_5f5fautogen_5f5fCompany {
	conditionset.userset_USA_5fUser
	conditionset.resourceset__5f_5fautogen_5fCompany
	input.action in condition_set_permissions.USA_User.__autogen_Company[input.resource.type]
}
