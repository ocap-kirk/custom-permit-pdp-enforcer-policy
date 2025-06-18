package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default CSR_5f5fBobnikecom_5fon_5fLocation_5f_5f5f_5f5fautogen_5f5fLocation = false

CSR_5f5fBobnikecom_5fon_5fLocation_5f_5f5f_5f5fautogen_5f5fLocation {
	conditionset.userset_CSR_5fBobnikecom
	conditionset.resourceset__5f_5fautogen_5fLocation
	input.action in condition_set_permissions.CSR_Bobnikecom.__autogen_Location[input.resource.type]
}
