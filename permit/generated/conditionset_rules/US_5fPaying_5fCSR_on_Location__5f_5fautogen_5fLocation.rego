package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default US_5f5fPaying_5f5fCSR_5fon_5fLocation_5f_5f5f_5f5fautogen_5f5fLocation = false

US_5f5fPaying_5f5fCSR_5fon_5fLocation_5f_5f5f_5f5fautogen_5f5fLocation {
	conditionset.userset_US_5fPaying_5fCSR
	conditionset.resourceset__5f_5fautogen_5fLocation
	input.action in condition_set_permissions.US_Paying_CSR.__autogen_Location[input.resource.type]
}
