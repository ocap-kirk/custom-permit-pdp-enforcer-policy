package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_US_5fPaying_5fCSR = false

userset_US_5fPaying_5fCSR {
	attributes.user.roles == "CSR"
	attributes.user.PayingCustomer == true
	attributes.user.location == "US"
}
