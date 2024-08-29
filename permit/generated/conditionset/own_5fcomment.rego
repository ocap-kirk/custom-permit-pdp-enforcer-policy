package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_own_5fcomment = false

resourceset_own_5fcomment {
	attributes.resource.author == attributes.user.key
	attributes.resource.type == "comment"
}
