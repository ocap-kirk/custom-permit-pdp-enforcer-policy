package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Active_5fSub_5fApp = false

resourceset_Active_5fSub_5fApp {
	attributes.resource.status == "active"
	attributes.resource.type == "sub_application"
}
