Profile: NZPSComposition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id: nzps-composition
Title: "NZPS-Composition"
Description: "Clinical document used to represent the NZPS data set. It is an electronic health record extract containing essential healthcare information about a subject of care. The NZIPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant."
* ^version = "0.1.0"
* ^status = #active
* ^url = $nzps-composition

* subject only Reference($nzps-patient)

* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section[sectionMedications].code = $loinc#10160-0
* section[sectionMedications].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedications].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedications].entry ^slicing.rules = #open
* section[sectionMedications].entry[medicationStatement] only Reference($nzps-medicationStatement)
* section[sectionMedications].entry[medicationRequest] only Reference($nzps-medicationRequest)
* section[sectionAllergies].code = $loinc#48765-2
* section[sectionAllergies].entry ^slicing.discriminator[0].type = #profile
* section[sectionAllergies].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAllergies].entry ^slicing.rules = #open
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference($nzps-allergyIntolerance )
* section[sectionAllergies].entry[allergyOrIntolerance] MS
* section[sectionProblems].code = $loinc#11450-4
* section[sectionProblems].entry ^slicing.discriminator[0].type = #profile
* section[sectionProblems].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionProblems].entry ^slicing.rules = #open
* section[sectionProblems].entry[problem] only Reference($nzps-condition)
* section[sectionProblems].entry[problem] MS
/* 
* section[sectionProceduresHx].code = $loinc#47519-4
* section[sectionProceduresHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionProceduresHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionProceduresHx].entry ^slicing.rules = #open
* section[sectionProceduresHx].entry[procedure] only Reference($nzps-procedure) 
*/
* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].entry ^slicing.discriminator[0].type = #profile
* section[sectionImmunizations].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionImmunizations].entry ^slicing.rules = #open
* section[sectionImmunizations].entry[immunization] only Reference($nzps-immunization)
/*
* section[sectionMedicalDevices].code = $loinc#46264-8
* section[sectionMedicalDevices].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicalDevices].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicalDevices].entry ^slicing.rules = #open
* section[sectionMedicalDevices].entry[deviceStatement] only Reference($DeviceUseStatement-au-ips)
*/
* section[sectionResults].code = $loinc#30954-2
* section[sectionResults].entry ^slicing.discriminator[0].type = #type
* section[sectionResults].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionResults].entry ^slicing.discriminator[+].type = #profile
* section[sectionResults].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionResults].entry ^slicing.rules = #open
* section[sectionResults].entry[results-observation] only Reference($nzps-observation-results)
* section[sectionResults].entry[results-diagnosticReport] only Reference($nzps-diagnosticReport)
* section[sectionVitalSigns].code = $loinc#8716-3
* section[sectionVitalSigns].entry ^slicing.discriminator[0].type = #profile
* section[sectionVitalSigns].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionVitalSigns].entry ^slicing.rules = #open
* section[sectionVitalSigns].entry[vitalSign] only Reference($nzps-observation-vitalsigns)
* section[sectionPastIllnessHx].code = $loinc#11348-0
* section[sectionPastIllnessHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionPastIllnessHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionPastIllnessHx].entry ^slicing.rules = #open
* section[sectionPastIllnessHx].entry[pastProblem] only Reference($nzps-condition)
* section[sectionFunctionalStatus].code = $loinc#47420-5
* section[sectionFunctionalStatus].entry ^slicing.discriminator[0].type = #profile
* section[sectionFunctionalStatus].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionFunctionalStatus].entry ^slicing.rules = #open
* section[sectionFunctionalStatus].entry[disability] only Reference($nzps-condition)
* section[sectionFunctionalStatus].entry[functionalAssessment] only Reference(ClinicalImpression)
* section[sectionPlanOfCare].code = $loinc#18776-5
* section[sectionPlanOfCare].entry ^slicing.discriminator[0].type = #profile
* section[sectionPlanOfCare].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionPlanOfCare].entry ^slicing.rules = #open
* section[sectionPlanOfCare].entry[carePlan] only Reference($nzps-carePlan)
* section[sectionSocialHistory].code = $loinc#29762-2
* section[sectionSocialHistory].entry ^slicing.discriminator[0].type = #profile
* section[sectionSocialHistory].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionSocialHistory].entry ^slicing.rules = #open
* section[sectionSocialHistory].entry[smokingTobaccoUse] only Reference($nzps-observation-smoking)
//* section[sectionSocialHistory].entry[alcoholUse] only Reference($Observation-alcoholuse-au-ips)

/*
* section[sectionPregnancyHx].code = $loinc#10162-6
* section[sectionPregnancyHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionPregnancyHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionPregnancyHx].entry ^slicing.rules = #open
* section[sectionPregnancyHx].entry[pregnancyStatus] only Reference($Observation-pregnancy-status-au-ips)
* section[sectionPregnancyHx].entry[pregnancyOutcomeSummary] only Reference($Observation-pregnancy-outcome-au-ips)
*/
* section[sectionAdvanceDirectives].code = $loinc#42348-3
* section[sectionAdvanceDirectives].entry ^slicing.discriminator[0].type = #profile
* section[sectionAdvanceDirectives].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAdvanceDirectives].entry ^slicing.rules = #open
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] only Reference(Consent)

