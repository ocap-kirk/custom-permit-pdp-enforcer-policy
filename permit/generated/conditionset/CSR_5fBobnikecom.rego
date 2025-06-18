package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_CSR_5fBobnikecom = false

userset_CSR_5fBobnikecom {
	"CSR" in attributes.user.roles
	attributes.user.email == "bob@nike.com"
}
