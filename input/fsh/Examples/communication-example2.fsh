Alias: $messagetypes = http://acme.org/messagetypes // would need to be a real CodeSystem
Alias: $v3-ParticipationMode = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode

Instance: NZPSCommunicationExampleTwo
InstanceOf: Communication
Title: "NZPS Communication Patient Story Example two (one Communication Resource per content item)"
Usage: #example

* status = #completed
* category = $messagetypes#PATIENT_STORY
* category.text = "Patient Story"
* medium = $v3-ParticipationMode#VERBAL "verbal"
* medium.text = "verbal"
* subject = Reference(Patient/example)
* sent = "2022-12-12T18:01:10-08:00"
* received = "2022-12-12T18:01:10-08:00"
* recipient = Reference(Practitioner/example)
* sender = Reference(Patient/example)

* payload[+].contentReference = Reference(RelatedPerson/cindy)
* note[+].text = "Cindy is Ioese's fa'afafine son who was a social worker now cares fulltime. They help Ioese with his diabetes test kit."
