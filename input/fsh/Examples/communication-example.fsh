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

* payload[+].contentString = "I need help monitoring my diabetes (current)/my diabetes is remotely monitored and I can talk with people facing similar issues"
* payload[+].contentString = "With my family, we have decided that I need to enter residential care. The facility will need to cater for extended family and group visits"
* payload[+].contentString = "I have a Medic Alert bracelet in case of any potential health events or if I get lost"
* payload[+].contentString = "Members of my aiga attend all of my appointments"
* payload[+].contentReference = Reference(RelatedPerson/churchminister)
* payload[+].contentReference = Reference(RelatedPerson/cindy)
