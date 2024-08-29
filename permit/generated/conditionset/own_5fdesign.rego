package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_own_5fdesign = false

resourceset_own_5fdesign {
	attributes.resource.creator == attributes.user.key
	attributes.resource.type == "design"
}
