package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset__5f_5fautogen_5fProofedUser = false

userset__5f_5fautogen_5fProofedUser {
	"ProofedUser" in attributes.user.roles
}
