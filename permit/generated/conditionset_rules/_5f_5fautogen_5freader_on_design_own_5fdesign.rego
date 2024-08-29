package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default _5f5f_5f5fautogen_5f5freader_5fon_5fdesign_5fown_5f5fdesign = false

_5f5f_5f5fautogen_5f5freader_5fon_5fdesign_5fown_5f5fdesign {
	conditionset.userset__5f_5fautogen_5freader
	conditionset.resourceset_own_5fdesign
	input.action in condition_set_permissions.__autogen_reader.own_design[input.resource.type]
}
