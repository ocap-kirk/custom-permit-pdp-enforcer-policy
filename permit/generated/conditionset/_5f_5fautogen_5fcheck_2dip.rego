package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset__5f_5fautogen_5fcheck_2dip = false

userset__5f_5fautogen_5fcheck_2dip {
	"check-ip" in attributes.user.roles
}
