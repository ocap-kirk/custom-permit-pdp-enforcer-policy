package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_FinanceViewer = false

userset_FinanceViewer {
	attributes.user.email == "bob"
}
