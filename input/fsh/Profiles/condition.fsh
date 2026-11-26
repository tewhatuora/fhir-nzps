Profile: NZPSProblem
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzCondition
Id: nzps-problem
Title: "NZPS-Problem (Condition)"
Description: "This profile represents a health problem (FHIR Condition) in a New Zealand Patient Summary. It is based on the [NZ Base Condition](http://hl7.org.nz/fhir/StructureDefinition/NzCondition) profile, and applies the additional requirements from [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips)."
* insert CompliesWithIPS(Condition-uv-ips)

// Problem Manifestation code == evidence.code? do we need to clarify that?

// ---------- IPS requirements (Condition-uv-ips 2.0.1) ----------
* clinicalStatus MS
* clinicalStatus only $CodeableConcept-uv-ips
* insert IPSObligationsMS(clinicalStatus)
* category MS
* category only $CodeableConcept-uv-ips
* category from http://hl7.org/fhir/uv/ips/ValueSet/problem-type-uv-ips (extensible)
* insert IPSAdditionalBinding(category, ips-condition-category-loinc-problem-type, #candidate, http://hl7.org/fhir/uv/ips/ValueSet/problem-type-loinc|2.0.1, An alternative additional binding to the LOINC \"Problem\" code - retained for backward compatibility.)
* insert IPSObligationsMS(category)
* severity MS
* severity only $CodeableConcept-uv-ips
* severity from http://hl7.org/fhir/ValueSet/condition-severity (preferred)
* insert IPSObligationsMS(severity)
* code 1..1 MS
* code only $CodeableConcept-uv-ips
* code from http://hl7.org/fhir/uv/ips/ValueSet/problems-uv-ips (preferred)
* insert IPSObligationsMS(code)
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* subject MS
* subject only Reference(NZPSPatient)
* insert IPSObligationsMS(subject)
* subject.reference 1..1 MS
* insert IPSObligationsReference(subject.reference)
* onset[x] MS
* insert IPSObligationsMS(onset[x])
* onsetDateTime MS
* insert IPSObligationsDate(onsetDateTime)
