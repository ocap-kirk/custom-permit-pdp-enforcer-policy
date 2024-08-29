package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default _5f5f_5f5fautogen_5f5fmanager_5fon_5fcomment_5fown_5f5fcomment = false

_5f5f_5f5fautogen_5f5fmanager_5fon_5fcomment_5fown_5f5fcomment {
	conditionset.userset__5f_5fautogen_5fmanager
	conditionset.resourceset_own_5fcomment
	input.action in condition_set_permissions.__autogen_manager.own_comment[input.resource.type]
}
