ValueSet: NZPSListEmptyReasonVs
Id: nzps-list-empty-reason-vs
Description: "Codes for why a list/section is empty"

* ^url = $nzps-list-empty-reason-vs
* ^version = "1.0.0"
* ^title = "NZPS List Empty Reason ValueSet"
* ^name = "NZPSListEmptyReasonValueset"
* ^experimental = false
* ^publisher = "HISO"

//* include codes from system $hl7-list-empty-reason 
* include codes from valueset $hl7-list-empty-vs
* include codes from system $nzps-list-empty-reason 

CodeSystem:  NZPSListEmptyReasonCS
Id: nzps-list-empty-reason-cs
Title: "Codes for why a list/section is empty"
Description:  "NZPS Specific codes for why a list/section is empty"

* ^url = $nzps-list-empty-reason
* ^caseSensitive = true
* ^version = "1.0.0"
* ^experimental = false

//* #nilknown "Nil Known" "Clinical judgment that there are no known items for this list after reasonable investigation. Note that this a positive statement by a clinical user, and not a default position asserted by a computer system in the lack of other information. Example uses:  * For allergies: the patient or patient's agent/guardian has asserted that he/she is not aware of any allergies (NKA - nil known allergies)  * For medications: the patient or patient's agent/guardian has asserted that the patient is known to be taking no medications  * For diagnoses, problems and procedures: the patient or patient's agent/guardian has asserted that there is no known event to record."
//* #notasked "Not Asked" "The investigation to find out whether there are items for this list has not occurred."
//* #withheld "Information Withheld" "The content of the list was not provided due to privacy or confidentiality concerns. Note that it should not be assumed that this means that the particular information in question was withheld due to its contents - it can also be a policy decision."
//* #unavailable "Unavailable" "Information to populate this list cannot be obtained; e.g. unconscious patient."
//* #notstarted "Not Started" "The work to populate this list has not yet begun."
//* #closed "Closed" "This list has now closed or has ceased to be relevant or useful."
* #sourceunavailable "Source System Unavailable" "The source system for the data returned in this section is currently unavailable or unreachable. This may mean there is information for this patient that exists but is not included."
