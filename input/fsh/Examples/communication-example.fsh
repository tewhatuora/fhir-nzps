Alias: $messagetypes = http://acme.org/messagetypes // would need to be a real CodeSystem
Alias: $v3-ParticipationMode = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode

Instance: NZPSCommunicationExample
InstanceOf: Communication
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

* payload[+].contentString = "I've started to go out less since my bad fall."
* payload[+].contentString = "My daughter takes care of me"
* payload[+].contentString = "My church is important to me"
* payload[+].contentString = "I want everyone to know that I'm embarrased to get healthcare sometimes."
* payload[+].contentReference = Reference(RelatedPerson/churchminister)
* payload[+].contentReference = Reference(RelatedPerson/cindy)
