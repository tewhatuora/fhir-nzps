# fhir-nzps 2023-11-FHIR-NZPS-IPSaTHON step 2 validation

```sh

FHIR Validation tool Version 6.2.5 (Git# 70d3c801d3e1). Built 2023-11-24T19:35:30.382Z (3 days old)
  Java:   11.0.2 from /usr/local/sdkman/candidates/java/11.0.2-open on x86_64 (64bit). 2048MB available
  Paths:  Current = /Users/chandan/Downloads, Package Cache = /Users/chandan/.fhir/packages
  Params: -ig https://build.fhir.org/ig/tewhatuora/fhir-nzps /Users/chandan/work/src/github.com/2023-hl-fhir-nzips-ipsathon/fhir-nzps-cd-fork/test-samples/hinz-ipsathon-samples/Patient-ZKT9319-1.json
Scanning for versions (no -version parameter):
  From Package at https://build.fhir.org/ig/tewhatuora/fhir-nzps: 4.0
-> use version 4.0
  Locale: New Zealand/NZ
  Jurisdiction: New Zealand
Loading
  Load FHIR v4.0 from hl7.fhir.r4.core#4.0.1 - 4576 resources (00:09.003)
  Load hl7.fhir.uv.extensions.r4#1.0.0 - 1328 resources (00:04.761)
  Load hl7.terminology#5.4.0 - 4202 resources (00:02.058)
  Load hl7.terminology.r5#5.0.0 - 4174 resources (00:04.812)
  Load hl7.fhir.uv.extensions#1.0.0 - 1328 resources (00:02.781)
  Terminology server http://tx.fhir.org - Version 3.0.0 (00:02.434)
  Load https://build.fhir.org/ig/tewhatuora/fhir-nzps+  .. load IG from hl7.terminology.r4#5.3.0
+  .. load IG from hl7.fhir.uv.ips#current
+  .. load IG from hl7.terminology.r4#5.3.0
+  .. load IG from fhir.dicom#2022.4.20221006
+  .. load IG from fhir.org.nz.ig.base#current
+  .. load IG from hl7.terminology.r4#5.3.0
 - 5133 resources (00:19.415)
  Package Summary: [hl7.fhir.r4.core#4.0.1, hl7.fhir.xver-extensions#0.0.12, hl7.fhir.uv.extensions.r4#1.0.0, hl7.terminology#5.4.0, hl7.terminology.r5#5.0.0, hl7.fhir.uv.extensions#1.0.0]
  Get set...  go (00:00.865)
Validating
  Validate /Users/chandan/work/src/github.com/2023-hl-fhir-nzips-ipsathon/fhir-nzps-cd-fork/test-samples/hinz-ipsathon-samples/Patient-ZKT9319-1.json
Validate Bundle against http://hl7.org/fhir/StructureDefinition/Bundle|4.0.1..........20..........40..........60..........80.........|
 00:34.135
Done. Times: Loading: 00:58.370, validation: 00:34.136. Memory = 640Mb

Success: 0 errors, 1 warnings, 22 notes
  Information @ Bundle.entry[43].resource/*Observation/6f64547c-89a3-459d-a993-b89e995c1f14*/ (line 2433, col14): Validate Observation against Body temperature profile because the LOINC code 8310-5 was found
  Information @ Bundle.entry[43].resource (line 2433, col14): Validate Observation against Body temperature profile because the LOINC code 8310-5 was found
  Information @ Bundle.entry[44].resource/*Observation/da3bbb11-e485-4396-a25c-611354789c65*/ (line 2479, col14): Validate Observation against Heart rate profile because the LOINC code 8867-4 was found
  Information @ Bundle.entry[44].resource (line 2479, col14): Validate Observation against Heart rate profile because the LOINC code 8867-4 was found
  Information @ Bundle.entry[45].resource/*Observation/5dead0bd-80c7-42f7-9720-3aaf047eb89b*/ (line 2525, col14): Validate Observation against Respiratory Rate profile because the LOINC code 9279-1 was found
  Information @ Bundle.entry[45].resource (line 2525, col14): Validate Observation against Respiratory Rate profile because the LOINC code 9279-1 was found
  Information @ Bundle.entry[46].resource/*Observation/126f25f0-d921-4d9a-85a2-5b847cfb89fb*/ (line 2571, col14): Validate Observation against Blood pressure systolic and diastolic profile because the LOINC code 85354-9 was found
  Information @ Bundle.entry[46].resource (line 2571, col14): Validate Observation against Blood pressure systolic and diastolic profile because the LOINC code 85354-9 was found
  Information @ Bundle.entry[47].resource/*Observation/cf628f81-f66b-42a7-a33a-c5d38a604861*/ (line 2647, col14): Validate Observation against Body height profile because the LOINC code 8302-2 was found
  Information @ Bundle.entry[47].resource (line 2647, col14): Validate Observation against Body height profile because the LOINC code 8302-2 was found
  Information @ Bundle.entry[48].resource/*Observation/dd309bef-3b36-4422-a202-39d040113a5d*/ (line 2693, col14): Validate Observation against Body weight profile because the LOINC code 29463-7 was found
  Information @ Bundle.entry[48].resource (line 2693, col14): Validate Observation against Body weight profile because the LOINC code 29463-7 was found
  Information @ Bundle.entry[49].resource/*Observation/4c5e0a16-2e2c-47cc-8e1d-a87afee4d6f1*/ (line 2739, col14): Validate Observation against Body temperature profile because the LOINC code 8310-5 was found
  Information @ Bundle.entry[49].resource (line 2739, col14): Validate Observation against Body temperature profile because the LOINC code 8310-5 was found
  Information @ Bundle.entry[50].resource/*Observation/eda3092b-5228-420b-b0ce-f5eb77e73942*/ (line 2785, col14): Validate Observation against Heart rate profile because the LOINC code 8867-4 was found
  Information @ Bundle.entry[50].resource (line 2785, col14): Validate Observation against Heart rate profile because the LOINC code 8867-4 was found
  Information @ Bundle.entry[51].resource/*Observation/2d420435-f380-46e1-ad93-b9fef57f4b71*/ (line 2831, col14): Validate Observation against Respiratory Rate profile because the LOINC code 9279-1 was found
  Information @ Bundle.entry[51].resource (line 2831, col14): Validate Observation against Respiratory Rate profile because the LOINC code 9279-1 was found
  Information @ Bundle.entry[52].resource/*Observation/7a422837-80f5-4fa6-b3ac-8a0e44b99356*/ (line 2877, col14): Validate Observation against Blood pressure systolic and diastolic profile because the LOINC code 85354-9 was found
  Information @ Bundle.entry[52].resource (line 2877, col14): Validate Observation against Blood pressure systolic and diastolic profile because the LOINC code 85354-9 was found
  Information @ Bundle.entry[53].resource/*Observation/af9ae822-ae5d-4bec-88bf-4dd250350783*/ (line 2953, col14): Validate Observation against Body weight profile because the LOINC code 29463-7 was found
  Information @ Bundle.entry[53].resource (line 2953, col14): Validate Observation against Body weight profile because the LOINC code 29463-7 was found
  Warning @ Bundle.entry[57] (line 858, col10): Entry 'https://terminz.azurewebsites.net/fhir/Goal/4r40d5e3-9a5f-4e3f-b799-c3378da8e7dd' isn't reachable by traversing forwards from the Composition. Only Provenance is approved to be used this way (R4 section 3.3.1)
Done. Times: Loading: 00:58.370, validation: 00:34.136. Max Memory = 2Gb

```