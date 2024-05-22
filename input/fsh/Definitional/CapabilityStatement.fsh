Alias: $restful-security-service = http://terminology.hl7.org/CodeSystem/restful-security-service

Instance: HNZPatientSummaryCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* version = "0.2.0"
* name = "HNZPatientSummaryCapabilityStatement"
* title = "HNZ Patient Summary CapabilityStatement "
* status = #active
* date = "2024-05-22"
* publisher = "Te Whatu Ora"
* contact[0].name = "Te Whatu Ora"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "HNZ Patient Summary API capability statement. This API supports the $summary operation to return an NZPS compliant FHIR document containing a summary of a patient based on infomration held by Health New Zealand collated from multiple systems of record and sources of truth systems."
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* kind = #instance
* implementation.description = "HNZ NZPS API"
* implementation.url = "https://tbc.com"
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.resource[0].type = #Patient
* rest.resource[=].operation.name = "summary"
* rest.resource[=].operation.definition = "https://standards.digital.health.nz/fhir/OperationDefinition/nzps-summary"
