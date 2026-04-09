Instance: NZPSSummaryOperation
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/OperationDefinition/nzps-summary"
* version = "0.1.0"
* name = "NzpsSummary"
* title = "NZPS Summary"
* status = #draft
* kind = #operation
* date = "2024-01-01T13:15:56.964-00:00"
* publisher = "Health New Zealand | Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "The NZPS uses the $summary operation to allow clients to query by NHI number and be returned an NZPS compliant FHIR document. 

The $summary operation is invoked by POST'ing a Parameters resource containing the NHI number of the patient to the $summary endpoint.

Request URL:

`POST [base]/Patient/$summary`

Example Parameters body:

` 
[example Parameters resource here]
`

"
* affectsState = false
* code = #summary
* resource = #Patient
* system = false
* type = true
* instance = false

* parameter[0].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The NHI number of the patient for whom the summary is being requested. This should be provided with the NHI namespace (e.g. 'https://standards.digital.health.nz/ns/nhi-id|ZZZ0032)"
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #profile
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The profile for the patient summary being requested. For now, only a single profile is supported - the NZPS Bundle: https://standards.digital.health.nz/fhir/StructureDefinition/nzps-bundle"
* parameter[=].type = #uri
* parameter[+].name = #graph
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Currently the NZPS summary operation does not require or support a graph definition. This parameter is included for future compatibility if needed."
* parameter[=].type = #uri
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The Bundle returned is a document conforming to the specified input profile parameter or the NZPS [Bundle profile](./StructureDefinition-nzps-bundle.html) (if not otherwise specified)"
* parameter[=].type = #Bundle