package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default USA_5f5fUser_5fon_5fCompany_5fCompany_5f5fABC123 = false

USA_5f5fUser_5fon_5fCompany_5fCompany_5f5fABC123 {
	conditionset.userset_USA_5fUser
	conditionset.resourceset_Company_5fABC123
	input.action in condition_set_permissions.USA_User.Company_ABC123[input.resource.type]
}
