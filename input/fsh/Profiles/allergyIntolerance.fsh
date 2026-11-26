Profile: NZPSAllergyIntolerance
Parent: AllergyIntolerance
Id: nzps-allergyintolerance
Title: "NZPS-AllergyIntolerance"
Description: "This profile represents an allergy or intolerance in a New Zealand Patient Summary: a clinical assessment of a propensity, or a potential risk, for the patient to have an adverse reaction on future exposure to a substance or class of substance, and any reaction events. NZ Base has no AllergyIntolerance profile, so this profile is derived from the base AllergyIntolerance resource and applies the requirements from [AllergyIntolerance (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(AllergyIntolerance-uv-ips)

// ---------- IPS requirements (AllergyIntolerance-uv-ips 2.0.1) ----------
* extension contains http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement named abatement 0..1
* clinicalStatus MS
* clinicalStatus only $CodeableConcept-uv-ips
* insert IPSObligationsMS(clinicalStatus)
* type MS
* insert IPSObligationsMS(type)
* code 1..1 MS
* code only $CodeableConcept-uv-ips
* code from http://hl7.org/fhir/uv/ips/ValueSet/allergies-intolerances-uv-ips (preferred)
* code ^binding.description = "Type of the substance/product, allergy or intolerance condition or a code for absent/unknown allergy."
* insert IPSAdditionalBinding(code, ips-allergy-intolerance-code-whoatc, #candidate, http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips|2.0.1, Type of the substance/product\, allergy or intolerance condition.)
* insert IPSObligationsMS(code)
* patient MS
* patient only Reference(NZPSPatient)
* insert IPSObligationsMS(patient)
* patient.reference 1..1 MS
* insert IPSObligationsReference(patient.reference)
* onset[x] MS
* insert IPSObligationsMS(onset[x])
* onsetDateTime MS
* insert IPSObligationsDate(onsetDateTime)
* reaction MS
* insert IPSObligationsMS(reaction)
* reaction.manifestation MS
* reaction.manifestation only $CodeableConcept-uv-ips
* reaction.manifestation from http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-uv-ips (preferred)
* reaction.manifestation ^binding.description = "Code for the allergy or intolerance reaction manifestation from SNOMED CT."
* insert IPSObligationsMS(reaction.manifestation)
* reaction.severity MS
* insert IPSObligationsMS(reaction.severity)
