package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default USA_5f5fUser_5fon_5fBill_5f_5f5f_5f5fautogen_5f5fBill = false

USA_5f5fUser_5fon_5fBill_5f_5f5f_5f5fautogen_5f5fBill {
	conditionset.userset_USA_5fUser
	conditionset.resourceset__5f_5fautogen_5fBill
	input.action in condition_set_permissions.USA_User.__autogen_Bill[input.resource.type]
}
