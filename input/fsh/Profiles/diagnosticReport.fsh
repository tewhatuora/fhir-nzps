Profile: NZPSDiagnosticReport
Parent: DiagnosticReport
Id: nzps-diagnostic-report
Title: "NZPS-DiagnosticReport"
Description: "This profile represents a diagnostic test or procedure report in a New Zealand Patient Summary. NZ Base has no DiagnosticReport profile, so this profile is derived from the base DiagnosticReport resource and applies the requirements from [DiagnosticReport (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(DiagnosticReport-uv-ips)

// ---------- IPS requirements (DiagnosticReport-uv-ips 2.0.1) ----------
* status from http://hl7.org/fhir/uv/ips/ValueSet/diagnostics-report-status-uv-ips (required)
* code MS
* code only $CodeableConcept-uv-ips
* insert IPSObligationsMS(code)
* subject 1..1 MS
* subject only Reference(NZPSPatient or Group)
* insert IPSObligationsMS(subject)
* subject.reference 1..1 MS
* insert IPSObligationsReference(subject.reference)
* effective[x] 1..1 MS
* insert IPSObligationsMS(effective[x])
* effectiveDateTime MS
* insert IPSObligationsDate(effectiveDateTime)
* performer MS
* performer only Reference(NZPSPractitioner or NZPSPractitionerRole or NZPSOrganization or CareTeam)
* insert IPSObligationsMS(performer)
* specimen only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips)
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result ^short = "Observation results included in the diagnostic report."
* result contains observation-results 0..* MS
* result[observation-results] only Reference(NZPSObservationResultsLaboratoryPathology or http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips)
* insert IPSObligationsMS(result[observation-results])
