Profile: NZPSCommunication
Parent: Communication
Id: nzps-communication
Title: "NZPS-Communication"
Description: "The NZPS Communication is a profile for the FHIR Communication resource. It is used to record communication between a health professional and a patient or other person about their wishes for future care."
* ^version = "0.1.0"
* ^status = #active
* ^url = $nzps-communication

* category ^short = "The type of message conveyed - this should be Patient story"
* medium ^short = "How the communication was sent - for example verbal, written, on-behalf"
* payload ^short = "Important things the Patient wants known"
* payload.contentString ^short = "Content important to the Patients story"
* payload.contentReference ^short = "People important to the Patients story"

* sender ^short = "The person who sent the communication - this could be the patient's Aunty, church minister, or a health professional"
* recipient ^short = "The person who received the communication - this could be the GP, nurse or receptionist"
