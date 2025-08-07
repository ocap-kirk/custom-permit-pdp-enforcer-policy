package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Pepsi_5fAdmin = false

userset_Pepsi_5fAdmin {
	"admin" in attributes.user.roles
	attributes.tenant.id == "coke"
}
