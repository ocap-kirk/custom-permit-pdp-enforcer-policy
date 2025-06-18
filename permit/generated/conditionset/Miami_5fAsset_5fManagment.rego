package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Miami_5fAsset_5fManagment = false

resourceset_Miami_5fAsset_5fManagment {
	attributes.resource.location == "Miami"
	attributes.resource.type == "Asset_Mangement"
}
