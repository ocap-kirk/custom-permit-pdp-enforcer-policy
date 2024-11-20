package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_USA_5fUser = false

userset_USA_5fUser {
	attributes.user.location == "USA"
}
