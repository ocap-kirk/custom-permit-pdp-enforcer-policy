package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default CSR_5f5fBobnikecom_5fon_5fAsset_5f5fMangement_5fOrlando = false

CSR_5f5fBobnikecom_5fon_5fAsset_5f5fMangement_5fOrlando {
	conditionset.userset_CSR_5fBobnikecom
	conditionset.resourceset_Orlando
	input.action in condition_set_permissions.CSR_Bobnikecom.Orlando[input.resource.type]
}
