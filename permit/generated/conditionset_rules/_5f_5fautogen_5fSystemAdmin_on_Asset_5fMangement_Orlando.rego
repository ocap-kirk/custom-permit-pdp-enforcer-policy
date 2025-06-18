package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default _5f5f_5f5fautogen_5f5fSystemAdmin_5fon_5fAsset_5f5fMangement_5fOrlando = false

_5f5f_5f5fautogen_5f5fSystemAdmin_5fon_5fAsset_5f5fMangement_5fOrlando {
	conditionset.userset__5f_5fautogen_5fSystemAdmin
	conditionset.resourceset_Orlando
	input.action in condition_set_permissions.__autogen_SystemAdmin.Orlando[input.resource.type]
}
