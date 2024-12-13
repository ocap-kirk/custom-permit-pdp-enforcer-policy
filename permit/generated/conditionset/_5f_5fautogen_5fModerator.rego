package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset__5f_5fautogen_5fModerator = false

userset__5f_5fautogen_5fModerator {
	"Moderator" in attributes.user.roles
}
