package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Coke_5fAdmin = false

userset_Coke_5fAdmin {
	attributes.tenant.id == "coke"
	"admin" in attributes.user.roles
}
