package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Orlando = false

resourceset_Orlando {
	attributes.resource.location == "Orlando"
	attributes.resource.type == "Asset_Mangement"
}
