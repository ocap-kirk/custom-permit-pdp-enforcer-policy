package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Company_5fABC123 = false

resourceset_Company_5fABC123 {
	attributes.resource.company_id == "abc123"
	attributes.resource.type == "Company"
}
