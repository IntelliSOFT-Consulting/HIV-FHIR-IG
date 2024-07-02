Alias: $0203 = http://hl7.org/fhir/v2/0203
Alias : $valueSetUrl = https://fhir.staging.openconceptlab.org/orgs/HL7/ValueSet/administrative-gender/
Alias : $testResultsReceivedValueURl = https://fhir.staging.openconceptlab.org/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.D.DE8/
Alias : $testResultsValueURl = https://fhir.staging.openconceptlab.org/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.D.DE7/
Alias : $facilityEntryLevelTestingValueURl = https://fhir.staging.openconceptlab.org/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.D.DE6/
Alias : $kenyaValueSetURlValue = https://fhir.staging.openconceptlab.org/orgs/Kenya_SMART_Guidelines/ValueSet
Alias : $transferInValueSetURlValue = https://app.staging.openconceptlab.org/transfer.in
Alias : $htsSettingValueSetUrlValue = https://app.staging.openconceptlab.org/hts.setting
Alias : $entryPointValueSetUrlValue = https://app.staging.openconceptlab.org/entry.point

ValueSet: EntryPointForFacilityLevelTesting
Id: HIV.D.DE6
Title: "Entry point for facility-level testing"
Description: "0.1.0"
* ^name = "Entry point for facility-level testing"
* ^version = "0.1.0"
* ^status = #active
* ^meta.lastUpdated = "2024-06-18T13:53:01.296973Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
// * ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.D.DE6/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* $facilityEntryLevelTestingValueURl#emergency
* $facilityEntryLevelTestingValueURl#pmtct-anc1-only
* $facilityEntryLevelTestingValueURl#post-anc1-pregnancy
* $facilityEntryLevelTestingValueURl#tb
* $facilityEntryLevelTestingValueURl#pediatric-less-than-five-clinic
* $facilityEntryLevelTestingValueURl#pmtct-anc1-breastfeeding
* $facilityEntryLevelTestingValueURl#vct
* $facilityEntryLevelTestingValueURl#vmmc
* $facilityEntryLevelTestingValueURl#Index
* $facilityEntryLevelTestingValueURl#malnutrition
* $facilityEntryLevelTestingValueURl#inpatient
* $facilityEntryLevelTestingValueURl#sns
* $facilityEntryLevelTestingValueURl#sti
* $facilityEntryLevelTestingValueURl#other-pitc


ValueSet: NewEnrollment
Id: HIV.B.DE3
Title: "New Enrollment"
Description: "0.1.0"
* ^name = "New Enrollment"
* ^version = "0.1.0"
* ^status = #active
* ^meta.lastUpdated = "2024-06-18T14:05:13.470948Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.B.DE3/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* https://fhir.staging.openconceptlab.org/orgs/Kenya_SMART_Guidelines#9860129
* https://fhir.staging.openconceptlab.org/orgs/Kenya_SMART_Guidelines#9860127


Alias: $EnrollmentMethods = https://path-global-health.github.io/MERindicators/CodeSystem/EnrollmentMethods
Alias: $0203 = http://hl7.org/fhir/v2/0203
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

ValueSet: EnrollmentMethodsforHIVProgram
Id: EnrollmentMethodsforHIVProgram
Title: "EnrollmentMethodsforHIVProgram"
Description: "1"
* ^version = "0.1.0"
* ^url = "https://path-global-health.github.io/MERindicators/ValueSet/EnrollmentMethodsforHIVProgram"
* ^status = #draft
* ^meta.lastUpdated = "2023-09-01T14:06:03.742108Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/EnrollmentMethodsforHIVProgram/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* ^date = "2023-09-01T00:14:22Z"
* ^contact[0].name = "PATH"
* ^contact[=].telecom[0].value = "https://www.path.org"
* ^contact[=].telecom[=].system = #url
* ^contact[=].telecom[+].value = "info@path.org"
* ^contact[=].telecom[=].system = #email
* ^contact[+].name = "PATH"
* ^contact[=].telecom.use = #work
* ^contact[=].telecom.value = "info@path.org"
* ^contact[=].telecom.system = #email
* ^jurisdiction = $m49.htm#001 "World"
* ^publisher = "PATH"
* include codes from system $EnrollmentMethods


Alias: $OpenHIE = https://path-global-health.github.io/MERindicators/CodeSystem/OpenHIE
Alias: $CIEL = https://openconceptlab.org/orgs/CIEL/sources/CIEL
Alias: $0203 = http://hl7.org/fhir/v2/0203
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

ValueSet: OnARV
Id: OnARV
Title: "History of antiretroviral therapy (situation)"
Description: "0.1.1"
* ^version = "0.1.1"
* ^status = #active
* ^meta.lastUpdated = "2024-07-02T08:44:37.713326Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/OnARV/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* ^date = "2023-09-01T00:14:22Z"
* ^contact[0].name = "PATH"
* ^contact[=].telecom[0].value = "https://www.path.org"
* ^contact[=].telecom[=].system = #url
* ^contact[=].telecom[+].value = "info@path.org"
* ^contact[=].telecom[=].system = #email
* ^contact[+].name = "PATH"
* ^contact[=].telecom.use = #work
* ^contact[=].telecom.value = "info@path.org"
* ^contact[=].telecom.system = #email
* ^jurisdiction = $m49.htm#001 "World"
* ^publisher = "PATH"
* ^experimental = true
* SNOMED_CT_INT#432101000124108 "History of antiretroviral therapy (situation)"
* $OpenHIE#432101000124108 "History of antiretroviral therapy (situation)"
* $CIEL#160119 "CURRENTLY TAKING ARV"



Alias: $0203 = http://hl7.org/fhir/v2/0203

ValueSet: TestResultsReceived
Id: HIV.D.DE8
Title: "Test results received"
Description: "0.1.0"
* ^name = "Test results received"
* ^version = "0.1.0"
* ^status = #active
* ^meta.lastUpdated = "2024-07-02T08:39:15.775424Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.D.DE8/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* $testResultsReceivedValueURl#9860129
* $testResultsReceivedValueURl#9860127


ValueSet: TestResult
Id: HIV.D.DE7
Title: "Test result"
Description: "0.1.0"
* ^name = "Test result"
* ^version = "0.1.0"
* ^status = #active
* ^meta.lastUpdated = "2024-07-02T08:40:25.540106Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.D.DE7/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* $testResultsValueURl#9860243
* $testResultsValueURl#9860241



ValueSet: EntryPointForCommunityLevelTesting
Id: HIV.D.DE5
Title: "Entry point for community-level testing"
Description: "0.1.1"
* ^name = "Entry point for community-level testing"
* ^version = "0.1.1"
* ^status = #active
* ^meta.lastUpdated = "2024-07-02T09:13:39.228191Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/HIV.D.DE5/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* $kenyaValueSetURlValue#9860237
* $kenyaValueSetURlValue#9860239
* $kenyaValueSetURlValue#community-based
* $kenyaValueSetURlValue#other-community-based-testing


ValueSet: TransferIn
Id: transfer.in
Title: "Transfer in"
Description: "0.1.1"
* ^name = "Transfer in"
* ^version = "0.1.1"
// * ^url = "https://app.staging.openconceptlab.org/#/orgs/Kenya_SMART_Guidelines/collections/transfer_in"
* ^status = #active
* ^meta.lastUpdated = "2024-07-02T09:14:51.685596Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/transfer.in/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* $transferInValueSetURlValue#1065
* $transferInValueSetURlValue#1066
* $transferInValueSetURlValue#9860127
* $transferInValueSetURlValue#9860129

Alias: $0203 = http://hl7.org/fhir/v2/0203

ValueSet: HTSSetting
Id: HTS.setting
Title: "HIV Testing Services Setting"
Description: "0.1.1"
* ^name = "HTS Setting"
* ^version = "0.1.1"
// * ^url = "https://app.staging.openconceptlab.org/#/orgs/Kenya_SMART_Guidelines/collections/HTS_setting/"
* ^status = #active
* ^meta.lastUpdated = "2024-07-02T09:15:25.951956Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/HTS_setting/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* $htsSettingValueSetUrlValue#163488
* $htsSettingValueSetUrlValue#1537


ValueSet: EntryPoint
Id: entry.point
Title: "Entry Point"
Description: "0.1.0"
* ^name = "Entry Point"
* ^version = "0.1.0"
// * ^url = "https://app.staging.openconceptlab.org/#/orgs/Kenya_SMART_Guidelines/collections/entry_point/"
* ^status = #active
* ^meta.lastUpdated = "2024-05-28T19:27:57.377923Z"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/ValueSet/entry_point/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* include codes from system $entryPointValueSetUrlValue|0.1.0
    where excludeWildcard = "true" and
    excludeFuzzy = "true" and
    includeSearchMeta = "true"