Profile: NZPSObservationResultsLaboratoryPathology
Parent: Observation
Id: nzps-observation-results-laboratory-pathology
Title: "NZPS-Observation-Results-Laboratory-Pathology"
Description: "This profile represents a laboratory (including pathology) result in a New Zealand Patient Summary, for a simple test or for a panel or study. NZ Base has no laboratory result profile, so this profile is derived from the base Observation resource and applies the requirements from [Observation Results - Laboratory/Pathology (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Observation-results-laboratory-pathology-uv-ips)

// ---------- IPS requirements (Observation-results-laboratory-pathology-uv-ips 2.0.1) ----------
* obeys ips-2 and ips-3
* status from http://hl7.org/fhir/uv/ips/ValueSet/results-status-uv-ips (required)
* category 1..*
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains laboratory 1..1 MS
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* insert IPSObligationsMS(category[laboratory])
* code MS
* code only $CodeableConcept-uv-ips
* code from http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-pathology-observations-uv-ips (preferred)
* insert IPSObligationsMS(code)
* subject 1..1 MS
* subject only Reference(NZPSPatient or Group or Device or Location)
* insert IPSObligationsMS(subject)
* subject.reference 1..1 MS
* insert IPSObligationsReference(subject.reference)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* insert IPSObligationsMS(effective[x])
* effectiveDateTime MS
* insert IPSObligationsDate(effectiveDateTime)
* performer 1..* MS
* performer only Reference(NZPSPractitioner or NZPSPractitionerRole or NZPSOrganization or CareTeam or NZPSPatient or RelatedPerson)
* insert IPSObligationsMS(performer)
* valueString MS
* insert IPSObligationsMS(valueString)
* valueQuantity MS
* insert IPSObligationsMS(valueQuantity)
* valueCodeableConcept MS
* valueCodeableConcept only $CodeableConcept-uv-ips
* valueCodeableConcept from http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-pathology-uv-ips (preferred)
* insert IPSObligationsMS(valueCodeableConcept)
* specimen only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips)
* hasMember only Reference(NZPSObservationResultsLaboratoryPathology)
* component MS
* insert IPSObligationsMS(component)

Invariant: ips-2
Description: "At least one of these Observation elements shall be provided:  \"value\", \"dataAbsentReason\", \"hasMember\" or \"component\""
Expression: "value.exists() or hasMember.exists() or component.exists() or dataAbsentReason.exists()"
Severity: #error

Invariant: ips-3
Description: "If observation has components, at least one of these Observation.component elements shall be provided:  \"value\" or \"dataAbsentReason\""
Expression: "component.exists() implies (component.value.exists() or component.dataAbsentReason.exists())"
Severity: #error
