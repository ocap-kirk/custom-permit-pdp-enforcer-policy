package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Miami_5fAsset_5fManagement = false

resourceset_Miami_5fAsset_5fManagement {
	attributes.resource.location == "Miami"
	attributes.resource.type == "Asset_Mangement"
}
