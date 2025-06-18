package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default CSR_5f5fBobnikecom_5fon_5fRegion_5f_5f5f_5f5fautogen_5f5fRegion = false

CSR_5f5fBobnikecom_5fon_5fRegion_5f_5f5f_5f5fautogen_5f5fRegion {
	conditionset.userset_CSR_5fBobnikecom
	conditionset.resourceset__5f_5fautogen_5fRegion
	input.action in condition_set_permissions.CSR_Bobnikecom.__autogen_Region[input.resource.type]
}
