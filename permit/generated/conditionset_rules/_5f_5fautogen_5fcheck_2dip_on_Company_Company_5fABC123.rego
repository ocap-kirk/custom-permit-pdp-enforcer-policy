package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default _5f5f_5f5fautogen_5f5fcheck_5f2dip_5fon_5fCompany_5fCompany_5f5fABC123 = false

_5f5f_5f5fautogen_5f5fcheck_5f2dip_5fon_5fCompany_5fCompany_5f5fABC123 {
	conditionset.userset__5f_5fautogen_5fcheck_2dip
	conditionset.resourceset_Company_5fABC123
	input.action in condition_set_permissions["__autogen_check-ip"].Company_ABC123[input.resource.type]
}
