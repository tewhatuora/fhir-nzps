Alias: $messagetypes = http://acme.org/messagetypes // would need to be a real CodeSystem
Alias: $v3-ParticipationMode = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode

Instance: NZPSCommunicationExample
InstanceOf: Communication
Title: "NZPS Communication Patient Story Example one (one Communication Resource for many content items)"
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

* payload[+].contentString = "I use a walker or a scooter but would prefer not to"
* payload[+].contentString = "I prefer to speak Samoan now as speaking English is hard for me after my fall"
* payload[+].contentString = "I live with my 5 children, Cindy, my fa'afafine son who was a social worker is my main support, and my \"digital navigator\" - they help me interact digitally."
* payload[+].contentString = "I struggle with keeping track of medications and need help with this"
* payload[+].contentString = "I struggle with diabetes monitoring and managing my insulin"
* payload[+].contentString = "We have decided I will move into residential care, which I am nervous about but I know my aiga is struggling with my current condition and I want to help them"
* payload[+].contentString = "I was heavily involved in my church but my health makes me ashamed to be so dependent on them, when I used to be the one who provided support."
* payload[+].contentString = "Different church groups regularly visit me though, and my aiga is spread across the world but all share in my care – economically and practically"

* payload[+].contentReference = Reference(RelatedPerson/churchminister)
* payload[+].contentReference = Reference(RelatedPerson/cindy)
* payload[+].contentReference = Reference(Practitioner/gp)
* payload[+].contentReference = Reference(Practitioner/geena)
