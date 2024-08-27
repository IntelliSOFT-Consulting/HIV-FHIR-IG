Alias: $0203 = http://hl7.org/fhir/v2/0203

CodeSystem: HIV-Indicators
Id: tx-curr
Title: "HIV Indicators"
Description: "0.1.1"
* ^url = "https://app.staging.openconceptlab.org/#/orgs/Kenya_SMART_Guidelines/sources/tx_curr"
* ^status = #active
* ^language = #en
* ^count = 37
* ^content = #complete
* ^property[0].code = #conceptclass
* ^property[=].uri = "https://api.staging.openconceptlab.org/orgs/OCL/sources/Classes/concepts"
* ^property[=].description = "Standard list of concept classes."
* ^property[=].type = #string
* ^property[+].code = #datatype
* ^property[=].uri = "https://api.staging.openconceptlab.org/orgs/OCL/sources/Datatypes/concepts"
* ^property[=].description = "Standard list of concept datatypes."
* ^property[=].type = #string
* ^property[+].code = #inactive
* ^property[=].uri = "http://hl7.org/fhir/concept-properties"
* ^property[=].description = "True if the concept is not considered active."
* ^property[=].type = #Coding
* ^meta.lastUpdated = "2024-07-16T12:55:55.565774Z"
* ^version = "0.1.1"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/CodeSystem/tx_curr/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
* #discontinuation_date "Discontinuation date"
* #discontinuation_date ^designation[0].language = #en
* #discontinuation_date ^designation[=].value = "Discontinuation date"
* #discontinuation_date ^designation[=].use.code = #Fully-Specified
* #discontinuation_date ^property[0].code = #conceptclass
* #discontinuation_date ^property[=].valueString = "Misc"
* #discontinuation_date ^property[+].code = #datatype
* #discontinuation_date ^property[=].valueString = "Date"
* #discontinuation_date ^property[+].code = #inactive
* #discontinuation_date ^property[=].valueBoolean = true
* #9860125 "New client"
* #9860125 ^designation[0].language = #en
* #9860125 ^designation[=].value = "New client"
* #9860125 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860125 ^designation[+].language = #en
* #9860125 ^designation[=].value = "New patient"
* #9860125 ^property[0].code = #conceptclass
* #9860125 ^property[=].valueString = "Question"
* #9860125 ^property[+].code = #datatype
* #9860125 ^property[=].valueString = "Coded"
* #9860125 ^property[+].code = #inactive
* #9860125 ^property[=].valueBoolean = true
* #9860119 "Transfer in date"
* #9860119 ^designation[0].language = #en
* #9860119 ^designation[=].value = "Transfer in date"
* #9860119 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860119 ^property[0].code = #conceptclass
* #9860119 ^property[=].valueString = "Question"
* #9860119 ^property[+].code = #datatype
* #9860119 ^property[=].valueString = "Date"
* #9860119 ^property[+].code = #inactive
* #9860119 ^property[=].valueBoolean = true
* #9860123 "Yes" "Generic answer to a question."
* #9860123 ^designation[0].language = #en
* #9860123 ^designation[=].value = "Yes"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #fr
* #9860123 ^designation[=].value = "Oui"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #rw
* #9860123 ^designation[=].value = "Yego"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #ti
* #9860123 ^designation[=].value = "እወ"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #es
* #9860123 ^designation[=].value = "Sí"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #ru
* #9860123 ^designation[=].value = "Да"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #en
* #9860123 ^designation[=].value = "True"
* #9860123 ^designation[+].language = #fr
* #9860123 ^designation[=].value = "Vrai"
* #9860123 ^designation[+].language = #es
* #9860123 ^designation[=].value = "Verdadero"
* #9860123 ^designation[+].language = #it
* #9860123 ^designation[=].value = "Sì"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #it
* #9860123 ^designation[=].value = "Vero"
* #9860123 ^designation[+].language = #pt
* #9860123 ^designation[=].value = "Sim"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #pt
* #9860123 ^designation[=].value = "Verdadeiro"
* #9860123 ^designation[+].language = #bn
* #9860123 ^designation[=].value = "হ্যাঁ"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #ht
* #9860123 ^designation[=].value = "Wi"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #ht
* #9860123 ^designation[=].value = "Vre"
* #9860123 ^designation[+].language = #ur
* #9860123 ^designation[=].value = "ہاں"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #km
* #9860123 ^designation[=].value = "បាទ"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^designation[+].language = #km
* #9860123 ^designation[=].value = "ចាស"
* #9860123 ^designation[+].language = #ne
* #9860123 ^designation[=].value = "हुन्छ"
* #9860123 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860123 ^property[0].code = #conceptclass
* #9860123 ^property[=].valueString = "Misc"
* #9860123 ^property[+].code = #datatype
* #9860123 ^property[=].valueString = "N/A"
* #9860123 ^property[+].code = #inactive
* #9860123 ^property[=].valueBoolean = true
* #9860121 "No" "Generic answer to a question."
* #9860121 ^designation[0].language = #en
* #9860121 ^designation[=].value = "No"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #fr
* #9860121 ^designation[=].value = "Non"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #rw
* #9860121 ^designation[=].value = "Muzima"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #ti
* #9860121 ^designation[=].value = "ኣይትጥቀምን"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #es
* #9860121 ^designation[=].value = "No"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #ru
* #9860121 ^designation[=].value = "Нет"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #en
* #9860121 ^designation[=].value = "False"
* #9860121 ^designation[+].language = #fr
* #9860121 ^designation[=].value = "Faux"
* #9860121 ^designation[+].language = #es
* #9860121 ^designation[=].value = "Falso"
* #9860121 ^designation[+].language = #it
* #9860121 ^designation[=].value = "No"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #it
* #9860121 ^designation[=].value = "Falso"
* #9860121 ^designation[+].language = #pt
* #9860121 ^designation[=].value = "Não"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #pt
* #9860121 ^designation[=].value = "Falso"
* #9860121 ^designation[+].language = #bn
* #9860121 ^designation[=].value = "না"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #ht
* #9860121 ^designation[=].value = "Non"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #ht
* #9860121 ^designation[=].value = "Fo"
* #9860121 ^designation[+].language = #ur
* #9860121 ^designation[=].value = "نہیں"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #km
* #9860121 ^designation[=].value = "ទេ"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^designation[+].language = #ne
* #9860121 ^designation[=].value = "हुँदैन"
* #9860121 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860121 ^property[0].code = #conceptclass
* #9860121 ^property[=].valueString = "Misc"
* #9860121 ^property[+].code = #datatype
* #9860121 ^property[=].valueString = "N/A"
* #9860121 ^property[+].code = #inactive
* #9860121 ^property[=].valueBoolean = true
* #patient_age_group "Patient Age group"
* #patient_age_group ^designation[0].language = #en
* #patient_age_group ^designation[=].value = "Patient Age group"
* #patient_age_group ^designation[=].use.code = #Fully-Specified
* #patient_age_group ^property[0].code = #conceptclass
* #patient_age_group ^property[=].valueString = "Misc"
* #patient_age_group ^property[+].code = #datatype
* #patient_age_group ^property[=].valueString = "Coded"
* #new_enrollment "New Enrollment" "Indication of whether the patient is newly initiating ART during the reporting period."
* #new_enrollment ^designation[0].language = #en
* #new_enrollment ^designation[=].value = "New Enrollment"
* #new_enrollment ^designation[=].use.code = #Fully-Specified
* #new_enrollment ^property[0].code = #conceptclass
* #new_enrollment ^property[=].valueString = "Misc"
* #new_enrollment ^property[+].code = #datatype
* #new_enrollment ^property[=].valueString = "Boolean"
* #current_on_art "Current on ART (TX_CURR)" "Identifies patients currently receiving ongoing ART treatment."
* #current_on_art ^designation[0].language = #en
* #current_on_art ^designation[=].value = "Current on ART (TX_CURR)"
* #current_on_art ^designation[=].use.code = #Fully-Specified
* #current_on_art ^property[0].code = #conceptclass
* #current_on_art ^property[=].valueString = "Misc"
* #current_on_art ^property[+].code = #datatype
* #current_on_art ^property[=].valueString = "Boolean"
* #date_of_art_initiation "Date of ART Initiation" "Date the patient started ART"
* #date_of_art_initiation ^designation[0].language = #en
* #date_of_art_initiation ^designation[=].value = "Date of ART Initiation"
* #date_of_art_initiation ^designation[=].use.code = #Fully-Specified
* #date_of_art_initiation ^property[0].code = #conceptclass
* #date_of_art_initiation ^property[=].valueString = "Misc"
* #date_of_art_initiation ^property[+].code = #datatype
* #date_of_art_initiation ^property[=].valueString = "Date"
* #previous_art_experience "Previous ART experience" "Capture if the patient has ever been on ART before."
* #previous_art_experience ^designation[0].language = #en
* #previous_art_experience ^designation[=].value = "Previous ART experience"
* #previous_art_experience ^designation[=].use.code = #Fully-Specified
* #previous_art_experience ^property[0].code = #conceptclass
* #previous_art_experience ^property[=].valueString = "Misc"
* #previous_art_experience ^property[+].code = #datatype
* #previous_art_experience ^property[=].valueString = "Text"
* #reason-for-treatment-interruption "Reason for treatment interruption" "Could be collected for patients restarting treatment."
* #reason-for-treatment-interruption ^designation[0].language = #en
* #reason-for-treatment-interruption ^designation[=].value = "Reason for treatment interruption"
* #reason-for-treatment-interruption ^designation[=].use.code = #Fully-Specified
* #reason-for-treatment-interruption ^property[0].code = #conceptclass
* #reason-for-treatment-interruption ^property[=].valueString = "Misc"
* #reason-for-treatment-interruption ^property[+].code = #datatype
* #reason-for-treatment-interruption ^property[=].valueString = "Coded"
* #HIV.C.DE2 "TX_CURR at Beginning of Period"
* #HIV.C.DE2 ^designation[0].language = #en
* #HIV.C.DE2 ^designation[=].value = "TX_CURR at Beginning of Period"
* #HIV.C.DE2 ^designation[=].use.code = #Fully-Specified
* #HIV.C.DE2 ^property[0].code = #conceptclass
* #HIV.C.DE2 ^property[=].valueString = "Misc"
* #HIV.C.DE2 ^property[+].code = #datatype
* #HIV.C.DE2 ^property[=].valueString = "Numeric"
* #HIV.C.DE3 "Date of Last Expected Contact"
* #HIV.C.DE3 ^designation[0].language = #en
* #HIV.C.DE3 ^designation[=].value = "Date of Last Expected Contact"
* #HIV.C.DE3 ^designation[=].use.code = #Fully-Specified
* #HIV.C.DE3 ^property[0].code = #conceptclass
* #HIV.C.DE3 ^property[=].valueString = "Misc"
* #HIV.C.DE3 ^property[+].code = #datatype
* #HIV.C.DE3 ^property[=].valueString = "Date"
* #HIV.C.DE4 "Date Last Seen"
* #HIV.C.DE4 ^designation[0].language = #en
* #HIV.C.DE4 ^designation[=].value = "Date Last Seen"
* #HIV.C.DE4 ^designation[=].use.code = #Fully-Specified
* #HIV.C.DE4 ^property[0].code = #conceptclass
* #HIV.C.DE4 ^property[=].valueString = "Misc"
* #HIV.C.DE4 ^property[+].code = #datatype
* #HIV.C.DE4 ^property[=].valueString = "Date"
* #HIV.C.DE6 "Duration of Treatment Interruption"
* #HIV.C.DE6 ^designation[0].language = #en
* #HIV.C.DE6 ^designation[=].value = "Duration of Treatment Interruption"
* #HIV.C.DE6 ^designation[=].use.code = #Fully-Specified
* #HIV.C.DE6 ^property[0].code = #conceptclass
* #HIV.C.DE6 ^property[=].valueString = "Misc"
* #HIV.C.DE6 ^property[+].code = #datatype
* #HIV.C.DE6 ^property[=].valueString = "Date"
* #HIV.C.DE7 "Date LTF Identified"
* #HIV.C.DE7 ^designation[0].language = #en
* #HIV.C.DE7 ^designation[=].value = "Date LTF Identified"
* #HIV.C.DE7 ^designation[=].use.code = #Fully-Specified
* #HIV.C.DE7 ^property[0].code = #conceptclass
* #HIV.C.DE7 ^property[=].valueString = "Misc"
* #HIV.C.DE7 ^property[+].code = #datatype
* #HIV.C.DE7 ^property[=].valueString = "Date"
* #HIV.D.DE3 "HIV testing services visit"
* #HIV.D.DE3 ^designation[0].language = #en
* #HIV.D.DE3 ^designation[=].value = "HIV testing services visit"
* #HIV.D.DE3 ^designation[=].use.code = #Fully-Specified
* #HIV.D.DE3 ^property[0].code = #conceptclass
* #HIV.D.DE3 ^property[=].valueString = "Misc"
* #HIV.D.DE3 ^property[+].code = #datatype
* #HIV.D.DE3 ^property[=].valueString = "None"
* #HIV.D.DE4 "HTS Setting"
* #HIV.D.DE4 ^designation[0].language = #en
* #HIV.D.DE4 ^designation[=].value = "HTS Setting"
* #HIV.D.DE4 ^designation[=].use.code = #Fully-Specified
* #HIV.D.DE4 ^property[0].code = #conceptclass
* #HIV.D.DE4 ^property[=].valueString = "Misc"
* #HIV.D.DE4 ^property[+].code = #datatype
* #HIV.D.DE4 ^property[=].valueString = "Text"
* #HIV.D.DE5 "Entry point for community-level testing"
* #HIV.D.DE5 ^designation[0].language = #en
* #HIV.D.DE5 ^designation[=].value = "Entry point for community-level testing"
* #HIV.D.DE5 ^designation[=].use.code = #Fully-Specified
* #HIV.D.DE5 ^property[0].code = #conceptclass
* #HIV.D.DE5 ^property[=].valueString = "Misc"
* #HIV.D.DE5 ^property[+].code = #datatype
* #HIV.D.DE5 ^property[=].valueString = "Coded"
* #community-based "Community Based"
* #community-based ^designation[0].language = #en
* #community-based ^designation[=].value = "Community Based"
* #community-based ^designation[=].use.code = #Fully-Specified
* #community-based ^property[0].code = #conceptclass
* #community-based ^property[=].valueString = "Misc"
* #community-based ^property[+].code = #datatype
* #community-based ^property[=].valueString = "None"
* #other-community-based-testing "Other community-based testing"
* #other-community-based-testing ^designation[0].language = #en
* #other-community-based-testing ^designation[=].value = "Other community-based testing"
* #other-community-based-testing ^designation[=].use.code = #Fully-Specified
* #other-community-based-testing ^property[0].code = #conceptclass
* #other-community-based-testing ^property[=].valueString = "Misc"
* #other-community-based-testing ^property[+].code = #datatype
* #other-community-based-testing ^property[=].valueString = "None"
* #HIV.D.DE6 "Entry point for facility-level testing"
* #HIV.D.DE6 ^designation[0].language = #en
* #HIV.D.DE6 ^designation[=].value = "Entry point for facility-level testing"
* #HIV.D.DE6 ^designation[=].use.code = #Fully-Specified
* #HIV.D.DE6 ^property[0].code = #conceptclass
* #HIV.D.DE6 ^property[=].valueString = "Misc"
* #HIV.D.DE6 ^property[+].code = #datatype
* #HIV.D.DE6 ^property[=].valueString = "Coded"
* #Index "Index"
* #Index ^designation[0].language = #en
* #Index ^designation[=].value = "Index"
* #Index ^designation[=].use.code = #Fully-Specified
* #Index ^property[0].code = #conceptclass
* #Index ^property[=].valueString = "Misc"
* #Index ^property[+].code = #datatype
* #Index ^property[=].valueString = "None"
* #emergency "Emergency"
* #emergency ^designation[0].language = #en
* #emergency ^designation[=].value = "Emergency"
* #emergency ^designation[=].use.code = #Fully-Specified
* #emergency ^property[0].code = #conceptclass
* #emergency ^property[=].valueString = "Misc"
* #emergency ^property[+].code = #datatype
* #emergency ^property[=].valueString = "None"
* #inpatient "Inpatient"
* #inpatient ^designation[0].language = #en
* #inpatient ^designation[=].value = "Inpatient"
* #inpatient ^designation[=].use.code = #Fully-Specified
* #inpatient ^property[0].code = #conceptclass
* #inpatient ^property[=].valueString = "Misc"
* #inpatient ^property[+].code = #datatype
* #inpatient ^property[=].valueString = "None"
* #malnutrition "Malnutrition"
* #malnutrition ^designation[0].language = #en
* #malnutrition ^designation[=].value = "Malnutrition"
* #malnutrition ^designation[=].use.code = #Fully-Specified
* #malnutrition ^property[0].code = #conceptclass
* #malnutrition ^property[=].valueString = "Misc"
* #malnutrition ^property[+].code = #datatype
* #malnutrition ^property[=].valueString = "None"
* #pediatric-less-than-five-clinic "Pediatric <5 Clinic"
* #pediatric-less-than-five-clinic ^designation[0].language = #en
* #pediatric-less-than-five-clinic ^designation[=].value = "Pediatric <5 Clinic"
* #pediatric-less-than-five-clinic ^designation[=].use.code = #Fully-Specified
* #pediatric-less-than-five-clinic ^property[0].code = #conceptclass
* #pediatric-less-than-five-clinic ^property[=].valueString = "Misc"
* #pediatric-less-than-five-clinic ^property[+].code = #datatype
* #pediatric-less-than-five-clinic ^property[=].valueString = "None"
* #pmtct-anc1-only "PMTCT [ANC1-Only]"
* #pmtct-anc1-only ^designation[0].language = #en
* #pmtct-anc1-only ^designation[=].value = "PMTCT [ANC1-Only]"
* #pmtct-anc1-only ^designation[=].use.code = #Fully-Specified
* #pmtct-anc1-only ^property[0].code = #conceptclass
* #pmtct-anc1-only ^property[=].valueString = "Misc"
* #pmtct-anc1-only ^property[+].code = #datatype
* #pmtct-anc1-only ^property[=].valueString = "None"
* #post-anc1-pregnancy "PMTCT [Post ANC1: Pregnancy/L&D]"
* #post-anc1-pregnancy ^designation[0].language = #en
* #post-anc1-pregnancy ^designation[=].value = "PMTCT [Post ANC1: Pregnancy/L&D]"
* #post-anc1-pregnancy ^designation[=].use.code = #Fully-Specified
* #post-anc1-pregnancy ^property[0].code = #conceptclass
* #post-anc1-pregnancy ^property[=].valueString = "Misc"
* #post-anc1-pregnancy ^property[+].code = #datatype
* #post-anc1-pregnancy ^property[=].valueString = "None"
* #pmtct-anc1-breastfeeding "PMTCT [Post ANC1: Breastfeeding]"
* #pmtct-anc1-breastfeeding ^designation[0].language = #en
* #pmtct-anc1-breastfeeding ^designation[=].value = "PMTCT [Post ANC1: Breastfeeding]"
* #pmtct-anc1-breastfeeding ^designation[=].use.code = #Fully-Specified
* #pmtct-anc1-breastfeeding ^property[0].code = #conceptclass
* #pmtct-anc1-breastfeeding ^property[=].valueString = "Misc"
* #pmtct-anc1-breastfeeding ^property[+].code = #datatype
* #pmtct-anc1-breastfeeding ^property[=].valueString = "None"
* #sns "SNS"
* #sns ^designation[0].language = #en
* #sns ^designation[=].value = "SNS"
* #sns ^designation[=].use.code = #Fully-Specified
* #sns ^property[0].code = #conceptclass
* #sns ^property[=].valueString = "Misc"
* #sns ^property[+].code = #datatype
* #sns ^property[=].valueString = "None"
* #sti "STI"
* #sti ^designation[0].language = #en
* #sti ^designation[=].value = "STI"
* #sti ^designation[=].use.code = #Fully-Specified
* #sti ^property[0].code = #conceptclass
* #sti ^property[=].valueString = "Misc"
* #sti ^property[+].code = #datatype
* #sti ^property[=].valueString = "None"
* #tb "TB"
* #tb ^designation[0].language = #en
* #tb ^designation[=].value = "TB"
* #tb ^designation[=].use.code = #Fully-Specified
* #tb ^property[0].code = #conceptclass
* #tb ^property[=].valueString = "Misc"
* #tb ^property[+].code = #datatype
* #tb ^property[=].valueString = "None"
* #vct "VCT"
* #vct ^designation[0].language = #en
* #vct ^designation[=].value = "VCT"
* #vct ^designation[=].use.code = #Fully-Specified
* #vct ^property[0].code = #conceptclass
* #vct ^property[=].valueString = "Misc"
* #vct ^property[+].code = #datatype
* #vct ^property[=].valueString = "None"
* #vmmc "VMMC"
* #vmmc ^designation[0].language = #en
* #vmmc ^designation[=].value = "VMMC"
* #vmmc ^designation[=].use.code = #Fully-Specified
* #vmmc ^property[0].code = #conceptclass
* #vmmc ^property[=].valueString = "Misc"
* #vmmc ^property[+].code = #datatype
* #vmmc ^property[=].valueString = "None"
* #other-pitc "Other PITC"
* #other-pitc ^designation[0].language = #en
* #other-pitc ^designation[=].value = "Other PITC"
* #other-pitc ^designation[=].use.code = #Fully-Specified
* #other-pitc ^property[0].code = #conceptclass
* #other-pitc ^property[=].valueString = "Misc"
* #other-pitc ^property[+].code = #datatype
* #other-pitc ^property[=].valueString = "None"
* #9921305 "index" "Refers to a document providing an index for the current document."
* #9921305 ^designation[0].language = #en
* #9921305 ^designation[=].value = "index"
* #9921305 ^property[0].code = #conceptclass
* #9921305 ^property[=].valueString = "Misc"
* #9921305 ^property[+].code = #datatype
* #9921305 ^property[=].valueString = "N/A"