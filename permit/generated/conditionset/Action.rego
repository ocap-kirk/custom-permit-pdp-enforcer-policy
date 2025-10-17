package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Action = false

resourceset_Action {
	count({x | some x in attributes.resource.actions} - {x | some x in ["create", "read"]}) == 0
	attributes.resource.type == "raw-materials"
}
