Instance: nzps-vaping-current-status
InstanceOf: $shareablevalueset 
Usage: #definition

* url = $nzps-current-vaping-status-vs
* version = "1.0.0"
* status = #active
* title = "Vaping Status"
* name = "VapingStatusVS"
* experimental = false
* publisher = "HISO"
* description = "ValueSet for Vaping Status based on the New Zealand vaping status reference set."
* immutable = false
* compose.include.system  =  "http://snomed.info/sct"

* compose.include.concept[0].code = #785889008
* compose.include.concept[=].display = "Currently vaping with nicotine"
* compose.include.concept[+].code = #1137692008
* compose.include.concept[=].display = "Ex-vaping for more than 1 year"
* compose.include.concept[+].code = #722499006
* compose.include.concept[=].display = "Currently vaping"
* compose.include.concept[+].code = #1137691001
* compose.include.concept[=].display = "Trying to give up vaping"
* compose.include.concept[+].code = #786063001
* compose.include.concept[=].display = "Currently vaping without nicotine"
* compose.include.concept[+].code = #1137688001
* compose.include.concept[=].display = "Ex-vaping for less than 1 year"
* compose.include.concept[+].code = #1137690000
* compose.include.concept[=].display = "Never vaped"
