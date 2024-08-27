Alias: $0203 = http://hl7.org/fhir/v2/0203
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

CodeSystem: CIEL
Id: CIEL
Title: "CIEL"
Description: "0.1.1"
* ^url = "https://openconceptlab.org/orgs/CIEL/sources/CIEL"
* ^status = #active
* ^language = #en
* ^count = 97
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
* ^meta.lastUpdated = "2024-06-10T13:12:40.540000Z"
* ^version = "0.1.1"
* ^identifier.system = "https://api.staging.openconceptlab.org"
* ^identifier.value = "/orgs/Kenya_SMART_Guidelines/CodeSystem/CIEL/"
* ^identifier.type.text = "Accession ID"
* ^identifier.type = $0203#ACSN "Accession ID"
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
* ^caseSensitive = false
* #1065 "YES"
* #1065 ^designation[0].language = #en
* #1065 ^designation[=].value = "YES"
* #1065 ^property[0].code = #conceptclass
* #1065 ^property[=].valueString = "Misc"
* #1065 ^property[+].code = #datatype
* #1065 ^property[=].valueString = "N/A"
* #1066 "NO"
* #1066 ^designation[0].language = #en
* #1066 ^designation[=].value = "NO"
* #1066 ^property[0].code = #conceptclass
* #1066 ^property[=].valueString = "Misc"
* #1066 ^property[+].code = #datatype
* #1066 ^property[=].valueString = "N/A"
* #1067 "Unknown"
* #1067 ^designation[0].language = #en
* #1067 ^designation[=].value = "Unknown"
* #1067 ^property[0].code = #conceptclass
* #1067 ^property[=].valueString = "Misc"
* #1067 ^property[+].code = #datatype
* #1067 ^property[=].valueString = "N/A"
* #1434 "Currently pregnant"
* #1434 ^designation[0].language = #en
* #1434 ^designation[=].value = "Currently pregnant"
* #1434 ^property[0].code = #conceptclass
* #1434 ^property[=].valueString = "Misc"
* #1434 ^property[+].code = #datatype
* #1434 ^property[=].valueString = "N/A"
* #138405 "Human immunodeficiency virus (HIV) disease"
* #138405 ^designation[0].language = #en
* #138405 ^designation[=].value = "Human immunodeficiency virus (HIV) disease"
* #138405 ^property[0].code = #conceptclass
* #138405 ^property[=].valueString = "Misc"
* #138405 ^property[+].code = #datatype
* #138405 ^property[=].valueString = "N/A"
* #160119 "CURRENTLY TAKING ARV"
* #160119 ^designation[0].language = #en
* #160119 ^designation[=].value = "CURRENTLY TAKING ARV"
* #160119 ^property[0].code = #conceptclass
* #160119 ^property[=].valueString = "Misc"
* #160119 ^property[+].code = #datatype
* #160119 ^property[=].valueString = "N/A"
* #116128 "Malaria"
* #116128 ^designation[0].language = #en
* #116128 ^designation[=].value = "Malaria"
* #116128 ^property[0].code = #conceptclass
* #116128 ^property[=].valueString = "Misc"
* #116128 ^property[+].code = #datatype
* #116128 ^property[=].valueString = "N/A"
* #160540 "Method of enrollment"
* #160540 ^designation[0].language = #en
* #160540 ^designation[=].value = "Method of enrollment"
* #160540 ^property[0].code = #conceptclass
* #160540 ^property[=].valueString = "Misc"
* #160540 ^property[+].code = #datatype
* #160540 ^property[=].valueString = "N/A"
* #160542 "Outpatient department"
* #160542 ^designation[0].language = #en
* #160542 ^designation[=].value = "Outpatient department"
* #160542 ^property[0].code = #conceptclass
* #160542 ^property[=].valueString = "Misc"
* #160542 ^property[+].code = #datatype
* #160542 ^property[=].valueString = "N/A"
* #1193 "CURRENT DRUGS USED"
* #1193 ^designation[0].language = #en
* #1193 ^designation[=].value = "CURRENT DRUGS USED"
* #1193 ^property[0].code = #conceptclass
* #1193 ^property[=].valueString = "Misc"
* #1193 ^property[+].code = #datatype
* #1193 ^property[=].valueString = "N/A"
* #5096 "RETURN VISIT DATE"
* #5096 ^designation[0].language = #en
* #5096 ^designation[=].value = "RETURN VISIT DATE"
* #5096 ^property[0].code = #conceptclass
* #5096 ^property[=].valueString = "Misc"
* #5096 ^property[+].code = #datatype
* #5096 ^property[=].valueString = "N/A"
* #160104 "Efavirenz / Lamivudine / Stavudine"
* #160104 ^designation[0].language = #en
* #160104 ^designation[=].value = "Efavirenz / Lamivudine / Stavudine"
* #160104 ^property[0].code = #conceptclass
* #160104 ^property[=].valueString = "Misc"
* #160104 ^property[+].code = #datatype
* #160104 ^property[=].valueString = "N/A"
* #160105 "Efavirenz / Stavudine / Zidovudine"
* #160105 ^designation[0].language = #en
* #160105 ^designation[=].value = "Efavirenz / Stavudine / Zidovudine"
* #160105 ^property[0].code = #conceptclass
* #160105 ^property[=].valueString = "Misc"
* #160105 ^property[+].code = #datatype
* #160105 ^property[=].valueString = "N/A"
* #160124 "Efavirenz / Lamivudine / Zidovudine"
* #160124 ^designation[0].language = #en
* #160124 ^designation[=].value = "Efavirenz / Lamivudine / Zidovudine"
* #160124 ^property[0].code = #conceptclass
* #160124 ^property[=].valueString = "Misc"
* #160124 ^property[+].code = #datatype
* #160124 ^property[=].valueString = "N/A"
* #161361 "efavirenz / lamivudine / tenofovir disoproxil"
* #161361 ^designation[0].language = #en
* #161361 ^designation[=].value = "efavirenz / lamivudine / tenofovir disoproxil"
* #161361 ^property[0].code = #conceptclass
* #161361 ^property[=].valueString = "Misc"
* #161361 ^property[+].code = #datatype
* #161361 ^property[=].valueString = "N/A"
* #161363 "lamivudine / stavudine"
* #161363 ^designation[0].language = #en
* #161363 ^designation[=].value = "lamivudine / stavudine"
* #161363 ^property[0].code = #conceptclass
* #161363 ^property[=].valueString = "Misc"
* #161363 ^property[+].code = #datatype
* #161363 ^property[=].valueString = "N/A"
* #161364 "Lamivudine / tenofovir disoproxil"
* #161364 ^designation[0].language = #en
* #161364 ^designation[=].value = "Lamivudine / tenofovir disoproxil"
* #161364 ^property[0].code = #conceptclass
* #161364 ^property[=].valueString = "Misc"
* #161364 ^property[+].code = #datatype
* #161364 ^property[=].valueString = "N/A"
* #1652 "Lamivudine / nevirapine / zidovudine"
* #1652 ^designation[0].language = #en
* #1652 ^designation[=].value = "Lamivudine / nevirapine / zidovudine"
* #1652 ^property[0].code = #conceptclass
* #1652 ^property[=].valueString = "Misc"
* #1652 ^property[+].code = #datatype
* #1652 ^property[=].valueString = "N/A"
* #5424 "Other antiretroviral drug"
* #5424 ^designation[0].language = #en
* #5424 ^designation[=].value = "Other antiretroviral drug"
* #5424 ^property[0].code = #conceptclass
* #5424 ^property[=].valueString = "Misc"
* #5424 ^property[+].code = #datatype
* #5424 ^property[=].valueString = "N/A"
* #5811 "Unknown antiretroviral drug"
* #5811 ^designation[0].language = #en
* #5811 ^designation[=].value = "Unknown antiretroviral drug"
* #5811 ^property[0].code = #conceptclass
* #5811 ^property[=].valueString = "Misc"
* #5811 ^property[+].code = #datatype
* #5811 ^property[=].valueString = "N/A"
* #630 "Lamivudine / zidovudine"
* #630 ^designation[0].language = #en
* #630 ^designation[=].value = "Lamivudine / zidovudine"
* #630 ^property[0].code = #conceptclass
* #630 ^property[=].valueString = "Misc"
* #630 ^property[+].code = #datatype
* #630 ^property[=].valueString = "N/A"
* #103166 "Abacavir / lamivudine"
* #103166 ^designation[0].language = #en
* #103166 ^designation[=].value = "Abacavir / lamivudine"
* #103166 ^property[0].code = #conceptclass
* #103166 ^property[=].valueString = "Misc"
* #103166 ^property[+].code = #datatype
* #103166 ^property[=].valueString = "N/A"
* #70056 "Abacavir"
* #70056 ^designation[0].language = #en
* #70056 ^designation[=].value = "Abacavir"
* #70056 ^property[0].code = #conceptclass
* #70056 ^property[=].valueString = "Misc"
* #70056 ^property[+].code = #datatype
* #70056 ^property[=].valueString = "N/A"
* #71647 "Atazanavir"
* #71647 ^designation[0].language = #en
* #71647 ^designation[=].value = "Atazanavir"
* #71647 ^property[0].code = #conceptclass
* #71647 ^property[=].valueString = "Misc"
* #71647 ^property[+].code = #datatype
* #71647 ^property[=].valueString = "N/A"
* #74807 "Didanosine"
* #74807 ^designation[0].language = #en
* #74807 ^designation[=].value = "Didanosine"
* #74807 ^property[0].code = #conceptclass
* #74807 ^property[=].valueString = "Misc"
* #74807 ^property[+].code = #datatype
* #74807 ^property[=].valueString = "N/A"
* #75523 "Efavirenz"
* #75523 ^designation[0].language = #en
* #75523 ^designation[=].value = "Efavirenz"
* #75523 ^property[0].code = #conceptclass
* #75523 ^property[=].valueString = "Misc"
* #75523 ^property[+].code = #datatype
* #75523 ^property[=].valueString = "N/A"
* #75628 "Efavirenz"
* #75628 ^designation[0].language = #en
* #75628 ^designation[=].value = "Efavirenz"
* #75628 ^property[0].code = #conceptclass
* #75628 ^property[=].valueString = "Misc"
* #75628 ^property[+].code = #datatype
* #75628 ^property[=].valueString = "N/A"
* #77995 "Indinavir"
* #77995 ^designation[0].language = #en
* #77995 ^designation[=].value = "Indinavir"
* #77995 ^property[0].code = #conceptclass
* #77995 ^property[=].valueString = "Misc"
* #77995 ^property[+].code = #datatype
* #77995 ^property[=].valueString = "N/A"
* #78643 "Lamivudine"
* #78643 ^designation[0].language = #en
* #78643 ^designation[=].value = "Lamivudine"
* #78643 ^property[0].code = #conceptclass
* #78643 ^property[=].valueString = "Misc"
* #78643 ^property[+].code = #datatype
* #78643 ^property[=].valueString = "N/A"
* #79040 "Lopinavir"
* #79040 ^designation[0].language = #en
* #79040 ^designation[=].value = "Lopinavir"
* #79040 ^property[0].code = #conceptclass
* #79040 ^property[=].valueString = "Misc"
* #79040 ^property[+].code = #datatype
* #79040 ^property[=].valueString = "N/A"
* #792 "Lamivudine / nevirapine / stavudine"
* #792 ^designation[0].language = #en
* #792 ^designation[=].value = "Lamivudine / nevirapine / stavudine"
* #792 ^property[0].code = #conceptclass
* #792 ^property[=].valueString = "Misc"
* #792 ^property[+].code = #datatype
* #792 ^property[=].valueString = "N/A"
* #794 "Lopinavir / ritonavir"
* #794 ^designation[0].language = #en
* #794 ^designation[=].value = "Lopinavir / ritonavir"
* #794 ^property[0].code = #conceptclass
* #794 ^property[=].valueString = "Misc"
* #794 ^property[+].code = #datatype
* #794 ^property[=].valueString = "N/A"
* #80487 "Nelfinavir"
* #80487 ^designation[0].language = #en
* #80487 ^designation[=].value = "Nelfinavir"
* #80487 ^property[0].code = #conceptclass
* #80487 ^property[=].valueString = "Misc"
* #80487 ^property[+].code = #datatype
* #80487 ^property[=].valueString = "N/A"
* #80586 "Nevirapine"
* #80586 ^designation[0].language = #en
* #80586 ^designation[=].value = "Nevirapine"
* #80586 ^property[0].code = #conceptclass
* #80586 ^property[=].valueString = "Misc"
* #80586 ^property[+].code = #datatype
* #80586 ^property[=].valueString = "N/A"
* #83412 "Ritonavir"
* #83412 ^designation[0].language = #en
* #83412 ^designation[=].value = "Ritonavir"
* #83412 ^property[0].code = #conceptclass
* #83412 ^property[=].valueString = "Misc"
* #83412 ^property[+].code = #datatype
* #83412 ^property[=].valueString = "N/A"
* #84309 "Stavudine"
* #84309 ^designation[0].language = #en
* #84309 ^designation[=].value = "Stavudine"
* #84309 ^property[0].code = #conceptclass
* #84309 ^property[=].valueString = "Misc"
* #84309 ^property[+].code = #datatype
* #84309 ^property[=].valueString = "N/A"
* #84795 "Tenofovir"
* #84795 ^designation[0].language = #en
* #84795 ^designation[=].value = "Tenofovir"
* #84795 ^property[0].code = #conceptclass
* #84795 ^property[=].valueString = "Misc"
* #84795 ^property[+].code = #datatype
* #84795 ^property[=].valueString = "N/A"
* #86663 "Zidovudine"
* #86663 ^designation[0].language = #en
* #86663 ^designation[=].value = "Zidovudine"
* #86663 ^property[0].code = #conceptclass
* #86663 ^property[=].valueString = "Misc"
* #86663 ^property[+].code = #datatype
* #86663 ^property[=].valueString = "N/A"
* #01234 "Tenofovir / Lamivudine / Dolutegravir"
* #01234 ^designation[0].language = #en
* #01234 ^designation[=].value = "Tenofovir / Lamivudine / Dolutegravir"
* #01234 ^property[0].code = #conceptclass
* #01234 ^property[=].valueString = "Misc"
* #01234 ^property[+].code = #datatype
* #01234 ^property[=].valueString = "N/A"
* #9860127 "No" "Generic answer to a question."
* #9860127 ^designation[0].language = #ru
* #9860127 ^designation[=].value = "Нет"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #en
* #9860127 ^designation[=].value = "False"
* #9860127 ^designation[+].language = #fr
* #9860127 ^designation[=].value = "Faux"
* #9860127 ^designation[+].language = #es
* #9860127 ^designation[=].value = "Falso"
* #9860127 ^designation[+].language = #it
* #9860127 ^designation[=].value = "No"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #it
* #9860127 ^designation[=].value = "Falso"
* #9860127 ^designation[+].language = #pt
* #9860127 ^designation[=].value = "Não"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #pt
* #9860127 ^designation[=].value = "Falso"
* #9860127 ^designation[+].language = #en
* #9860127 ^designation[=].value = "No"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #fr
* #9860127 ^designation[=].value = "Non"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #rw
* #9860127 ^designation[=].value = "Muzima"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #ti
* #9860127 ^designation[=].value = "ኣይትጥቀምን"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #es
* #9860127 ^designation[=].value = "No"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #bn
* #9860127 ^designation[=].value = "না"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #ht
* #9860127 ^designation[=].value = "Non"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #ht
* #9860127 ^designation[=].value = "Fo"
* #9860127 ^designation[+].language = #ur
* #9860127 ^designation[=].value = "نہیں"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #km
* #9860127 ^designation[=].value = "ទេ"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^designation[+].language = #ne
* #9860127 ^designation[=].value = "हुँदैन"
* #9860127 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860127 ^property[0].code = #conceptclass
* #9860127 ^property[=].valueString = "Misc"
* #9860127 ^property[+].code = #datatype
* #9860127 ^property[=].valueString = "N/A"
* #9860131 "New client"
* #9860131 ^designation[0].language = #en
* #9860131 ^designation[=].value = "New client"
* #9860131 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860131 ^designation[+].language = #en
* #9860131 ^designation[=].value = "New patient"
* #9860131 ^property[0].code = #conceptclass
* #9860131 ^property[=].valueString = "Question"
* #9860131 ^property[+].code = #datatype
* #9860131 ^property[=].valueString = "Coded"
* #9860133 "Transfer in date"
* #9860133 ^designation[0].language = #en
* #9860133 ^designation[=].value = "Transfer in date"
* #9860133 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860133 ^property[0].code = #conceptclass
* #9860133 ^property[=].valueString = "Question"
* #9860133 ^property[+].code = #datatype
* #9860133 ^property[=].valueString = "Date"
* #9860135 "Transit patient" "A patient who is being seen outside of their regular care setting temporarily to receive medication refills, etc."
* #9860135 ^designation[0].language = #en
* #9860135 ^designation[=].value = "Transient patient"
* #9860135 ^designation[+].language = #en
* #9860135 ^designation[=].value = "Transit patient"
* #9860135 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860135 ^property[0].code = #conceptclass
* #9860135 ^property[=].valueString = "Misc"
* #9860135 ^property[+].code = #datatype
* #9860135 ^property[=].valueString = "N/A"
* #9860137 "re-enroll"
* #9860137 ^designation[0].language = #en
* #9860137 ^designation[=].value = "re-enroll"
* #9860137 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860137 ^property[0].code = #conceptclass
* #9860137 ^property[=].valueString = "Misc"
* #9860137 ^property[+].code = #datatype
* #9860137 ^property[=].valueString = "N/A"
* #9860143 "Treatment end date"
* #9860143 ^designation[0].language = #en
* #9860143 ^designation[=].value = "Date treatment stopped"
* #9860143 ^designation[+].language = #en
* #9860143 ^designation[=].value = "Treatment end date"
* #9860143 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860143 ^designation[+].language = #es
* #9860143 ^designation[=].value = "Fecha en la que se suspendió el tratamiento"
* #9860143 ^property[0].code = #conceptclass
* #9860143 ^property[=].valueString = "Question"
* #9860143 ^property[+].code = #datatype
* #9860143 ^property[=].valueString = "Date"
* #9860145 "Transferred out" "Patient transferred out to other services"
* #9860145 ^designation[0].language = #en
* #9860145 ^designation[=].value = "Transferred out"
* #9860145 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860145 ^designation[+].language = #fr
* #9860145 ^designation[=].value = "Transférer au"
* #9860145 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860145 ^designation[+].language = #fr
* #9860145 ^designation[=].value = "Reféré vers"
* #9860145 ^designation[+].language = #ht
* #9860145 ^designation[=].value = "Transfere deyò"
* #9860145 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860145 ^property[0].code = #conceptclass
* #9860145 ^property[=].valueString = "Misc"
* #9860145 ^property[+].code = #datatype
* #9860145 ^property[=].valueString = "N/A"
* #9860147 "Died"
* #9860147 ^designation[0].language = #en
* #9860147 ^designation[=].value = "Died"
* #9860147 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860147 ^designation[+].language = #es
* #9860147 ^designation[=].value = "Muerte"
* #9860147 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860147 ^designation[+].language = #fr
* #9860147 ^designation[=].value = "Dècédé\t"
* #9860147 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860147 ^designation[+].language = #ht
* #9860147 ^designation[=].value = "mouri"
* #9860147 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860147 ^property[0].code = #conceptclass
* #9860147 ^property[=].valueString = "State"
* #9860147 ^property[+].code = #datatype
* #9860147 ^property[=].valueString = "N/A"
* #9860151 "Treatment interrupted/stopped"
* #9860151 ^designation[0].language = #en
* #9860151 ^designation[=].value = "Treatment interrupted/stopped"
* #9860151 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860151 ^property[0].code = #conceptclass
* #9860151 ^property[=].valueString = "Finding"
* #9860151 ^property[+].code = #datatype
* #9860151 ^property[=].valueString = "N/A"
* #9860153 "ARV regimen/code for drugs collected"
* #9860153 ^designation[0].language = #en
* #9860153 ^designation[=].value = "ARV regimen/code for drugs collected"
* #9860153 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860153 ^designation[+].language = #en
* #9860153 ^designation[=].value = "ARV regimen/code for drugs dispensed"
* #9860153 ^property[0].code = #conceptclass
* #9860153 ^property[=].valueString = "Finding"
* #9860153 ^property[+].code = #datatype
* #9860153 ^property[=].valueString = "Coded"
* #9860155 "Antiretroviral treatment start date" "When were the antiretroviral drugs started for the patient?"
* #9860155 ^designation[0].language = #en
* #9860155 ^designation[=].value = "Antiretroviral treatment start date"
* #9860155 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860155 ^designation[+].language = #en
* #9860155 ^designation[=].value = "ARV start date"
* #9860155 ^designation[=].use.code = #SHORT
* #9860155 ^designation[+].language = #en
* #9860155 ^designation[=].value = "ART start date"
* #9860155 ^designation[+].language = #fr
* #9860155 ^designation[=].value = "Date de début des antirétroviraux"
* #9860155 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860155 ^designation[+].language = #en
* #9860155 ^designation[=].value = "Date antiretrovirals started"
* #9860155 ^designation[+].language = #ht
* #9860155 ^designation[=].value = "Antiretwoviral tretman dat kòmansman"
* #9860155 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860155 ^property[0].code = #conceptclass
* #9860155 ^property[=].valueString = "Finding"
* #9860155 ^property[+].code = #datatype
* #9860155 ^property[=].valueString = "Date"
* #9860157 "Toxicity, drug" "Adverse reaction to a drug (oral, parenteral, topical)."
* #9860157 ^designation[0].language = #en
* #9860157 ^designation[=].value = "Toxicity, drug"
* #9860157 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860157 ^designation[+].language = #es
* #9860157 ^designation[=].value = "efecto adverso"
* #9860157 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860157 ^designation[+].language = #en
* #9860157 ^designation[=].value = "Drug poisoning"
* #9860157 ^designation[+].language = #en
* #9860157 ^designation[=].value = "Drug toxicity"
* #9860157 ^designation[+].language = #es
* #9860157 ^designation[=].value = "toxicidad por droga"
* #9860157 ^designation[+].language = #fr
* #9860157 ^designation[=].value = "Toxicité au médicaments"
* #9860157 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860157 ^designation[+].language = #ht
* #9860157 ^designation[=].value = "Medikaman toksik"
* #9860157 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860157 ^property[0].code = #conceptclass
* #9860157 ^property[=].valueString = "Diagnosis"
* #9860157 ^property[+].code = #datatype
* #9860157 ^property[=].valueString = "N/A"
* #9860159 "Regimen failure" "Failure of a therapy or treatment to achieve its end points."
* #9860159 ^designation[0].language = #en
* #9860159 ^designation[=].value = "Regimen failure"
* #9860159 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860159 ^designation[+].language = #fr
* #9860159 ^designation[=].value = "Échec du traitement"
* #9860159 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860159 ^designation[+].language = #es
* #9860159 ^designation[=].value = "Falla de tratamiento"
* #9860159 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860159 ^designation[+].language = #ht
* #9860159 ^designation[=].value = "Echek rejim"
* #9860159 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860159 ^property[0].code = #conceptclass
* #9860159 ^property[=].valueString = "Finding"
* #9860159 ^property[+].code = #datatype
* #9860159 ^property[=].valueString = "N/A"
* #9860161 "Cannot afford treatment" "Patient unable to pay for treatment."
* #9860161 ^designation[0].language = #en
* #9860161 ^designation[=].value = "Cannot afford treatment"
* #9860161 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860161 ^designation[+].language = #es
* #9860161 ^designation[=].value = "No puede costear el tratamiento"
* #9860161 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860161 ^designation[+].language = #fr
* #9860161 ^designation[=].value = "Pouvez pas offrir un traitement"
* #9860161 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860161 ^designation[+].language = #ht
* #9860161 ^designation[=].value = "Pa kapab peye tretman"
* #9860161 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860161 ^property[0].code = #conceptclass
* #9860161 ^property[=].valueString = "Finding"
* #9860161 ^property[+].code = #datatype
* #9860161 ^property[=].valueString = "N/A"
* #9860163 "Isoniazid / pyrazinamide / rifampin" "Combination drug also known as Rifater.  Used in the early treatment of tuberculosis."
* #9860163 ^designation[0].language = #en
* #9860163 ^designation[=].value = "Isoniazid / pyrazinamide / rifampin"
* #9860163 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860163 ^designation[+].language = #en
* #9860163 ^designation[=].value = "Rifater"
* #9860163 ^designation[+].language = #en
* #9860163 ^designation[=].value = "Rifampicin isoniazid and pyrazinamide"
* #9860163 ^designation[+].language = #es
* #9860163 ^designation[=].value = "Rifampicina+isoniazida+pirazinamida"
* #9860163 ^designation[+].language = #es
* #9860163 ^designation[=].value = "Rifampicina, isoniazida y pirazinamida"
* #9860163 ^property[0].code = #conceptclass
* #9860163 ^property[=].valueString = "Drug"
* #9860163 ^property[+].code = #datatype
* #9860163 ^property[=].valueString = "N/A"
* #9860165 "Weight change" "Alteration in a patient's weight.  Could represent either a weight gain or loss."
* #9860165 ^designation[0].language = #en
* #9860165 ^designation[=].value = "Weight change"
* #9860165 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860165 ^property[0].code = #conceptclass
* #9860165 ^property[=].valueString = "Finding"
* #9860165 ^property[+].code = #datatype
* #9860165 ^property[=].valueString = "N/A"
* #9860167 "Unknown" "Generic answer to a question."
* #9860167 ^designation[0].language = #en
* #9860167 ^designation[=].value = "Unknown"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #fr
* #9860167 ^designation[=].value = "Ne sait pas"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #fr
* #9860167 ^designation[=].value = "Inconnu"
* #9860167 ^designation[+].language = #rw
* #9860167 ^designation[=].value = "Ntabizi"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #es
* #9860167 ^designation[=].value = "Desconocido"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #es
* #9860167 ^designation[=].value = "Desconocida"
* #9860167 ^designation[+].language = #sw
* #9860167 ^designation[=].value = "Haijulikani"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #ru
* #9860167 ^designation[=].value = "Не известно"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #bn
* #9860167 ^designation[=].value = "জানিনা"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #ht
* #9860167 ^designation[=].value = "Enkoni"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #ur
* #9860167 ^designation[=].value = "معلوم نہیں"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^designation[+].language = #km
* #9860167 ^designation[=].value = "មិនដឹង"
* #9860167 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860167 ^property[0].code = #conceptclass
* #9860167 ^property[=].valueString = "Misc"
* #9860167 ^property[+].code = #datatype
* #9860167 ^property[=].valueString = "N/A"
* #9860169 "Ethambutol and isoniazid" "Combination drug used to treat tuberculosis, often used with other drugs.  It's also known as Ethizide."
* #9860169 ^designation[0].language = #en
* #9860169 ^designation[=].value = "Ethambutol and isoniazid"
* #9860169 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860169 ^designation[+].language = #en
* #9860169 ^designation[=].value = "Ethizide"
* #9860169 ^designation[+].language = #en
* #9860169 ^designation[=].value = "Ethambutol / isoniazid"
* #9860169 ^designation[=].use.code = #SHORT
* #9860169 ^designation[+].language = #es
* #9860169 ^designation[=].value = "Clorhidrato de etambutol+isoniazida"
* #9860169 ^property[0].code = #conceptclass
* #9860169 ^property[=].valueString = "Drug"
* #9860169 ^property[+].code = #datatype
* #9860169 ^property[=].valueString = "N/A"
* #9860171 "Rifampicin isoniazid pyrazinamide and ethambutol" "Fixed-dose combination drug used to treat tuberculosis.  Also known as Rifafour."
* #9860171 ^designation[0].language = #en
* #9860171 ^designation[=].value = "Rifampicin isoniazid pyrazinamide and ethambutol"
* #9860171 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860171 ^designation[+].language = #en
* #9860171 ^designation[=].value = "Rifafour"
* #9860171 ^property[0].code = #conceptclass
* #9860171 ^property[=].valueString = "Drug"
* #9860171 ^property[+].code = #datatype
* #9860171 ^property[=].valueString = "N/A"
* #9860173 "Reason antiretrovirals stopped" "Question on encounter form.  Part of the plan gathers a reason for stopping ARVs.  This concept captures that information."
* #9860173 ^designation[0].language = #en
* #9860173 ^designation[=].value = "Reason antiretrovirals stopped"
* #9860173 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860173 ^designation[+].language = #fr
* #9860173 ^designation[=].value = "Antirétroviraux raison d'arrêt"
* #9860173 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860173 ^designation[+].language = #ht
* #9860173 ^designation[=].value = "Rezon dwog antiretwoviral te sispann"
* #9860173 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860173 ^designation[+].language = #en
* #9860173 ^designation[=].value = "Reason ARVs stopped"
* #9860173 ^property[0].code = #conceptclass
* #9860173 ^property[=].valueString = "Question"
* #9860173 ^property[+].code = #datatype
* #9860173 ^property[=].valueString = "Coded"
* #9860175 "Tuberculosis treatment started" "Part of the encounter form plan. Answers are drugs started at the end of the particular encounter."
* #9860175 ^designation[0].language = #en
* #9860175 ^designation[=].value = "Tuberculosis treatment started"
* #9860175 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860175 ^property[0].code = #conceptclass
* #9860175 ^property[=].valueString = "Question"
* #9860175 ^property[+].code = #datatype
* #9860175 ^property[=].valueString = "Coded"
* #9860177 "Change formulation" "Answer on encounter form.  Implies that a patient's current drugs will be changed to meet a new formulation."
* #9860177 ^designation[0].language = #en
* #9860177 ^designation[=].value = "Change formulation"
* #9860177 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860177 ^designation[+].language = #fr
* #9860177 ^designation[=].value = "Changement de formulation"
* #9860177 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860177 ^property[0].code = #conceptclass
* #9860177 ^property[=].valueString = "Misc Order"
* #9860177 ^property[+].code = #datatype
* #9860177 ^property[=].valueString = "N/A"
* #9860179 "Completed total PMTCT" "Answer to question.  Implies that a person completed a course of total prevention of mother to child transmission therapy."
* #9860179 ^designation[0].language = #en
* #9860179 ^designation[=].value = "Completed total PMTCT"
* #9860179 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860179 ^designation[+].language = #fr
* #9860179 ^designation[=].value = "Traitement PTME complete"
* #9860179 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860179 ^designation[+].language = #ht
* #9860179 ^designation[=].value = "Fini ak PTME"
* #9860179 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860179 ^property[0].code = #conceptclass
* #9860179 ^property[=].valueString = "Finding"
* #9860179 ^property[+].code = #datatype
* #9860179 ^property[=].valueString = "N/A"
* #9860181 "Rifampicin and isoniazid" "Combination drug also known as Rifinah. Used in the early treatment of tuberculosis."
* #9860181 ^designation[0].language = #en
* #9860181 ^designation[=].value = "Rifampicin and isoniazid"
* #9860181 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860181 ^designation[+].language = #en
* #9860181 ^designation[=].value = "Rifinah"
* #9860181 ^designation[+].language = #es
* #9860181 ^designation[=].value = "Rifampicina+isoniazida"
* #9860181 ^designation[+].language = #es
* #9860181 ^designation[=].value = "Rifampicina e isoniazida"
* #9860181 ^property[0].code = #conceptclass
* #9860181 ^property[=].valueString = "Drug"
* #9860181 ^property[+].code = #datatype
* #9860181 ^property[=].valueString = "N/A"
* #9860183 "Currently pregnant"
* #9860183 ^designation[0].language = #en
* #9860183 ^designation[=].value = "Currently pregnant"
* #9860183 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860183 ^designation[+].language = #fr
* #9860183 ^designation[=].value = "Femme enceinte"
* #9860183 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860183 ^designation[+].language = #sw
* #9860183 ^designation[=].value = "Ujauzito wa sasa"
* #9860183 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860183 ^designation[+].language = #en
* #9860183 ^designation[=].value = "Currently pregnant"
* #9860183 ^designation[=].use.code = #SHORT
* #9860183 ^designation[+].language = #ht
* #9860183 ^designation[=].value = "Fanm ensent"
* #9860183 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860183 ^designation[+].language = #es
* #9860183 ^designation[=].value = "Embarazo confirmado"
* #9860183 ^designation[+].language = #es
* #9860183 ^designation[=].value = "Paciente actualmente embarazada"
* #9860183 ^designation[+].language = #es
* #9860183 ^designation[=].value = "Embarazada"
* #9860183 ^designation[+].language = #es
* #9860183 ^designation[=].value = "Actualmente embarazada"
* #9860183 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860183 ^property[0].code = #conceptclass
* #9860183 ^property[=].valueString = "Finding"
* #9860183 ^property[+].code = #datatype
* #9860183 ^property[=].valueString = "Boolean"
* #9860185 "Medications unavailable" "Drugs/medications unavailable for use to treat patient. A reason for not receiving/taking medications."
* #9860185 ^designation[0].language = #en
* #9860185 ^designation[=].value = "Medications unavailable"
* #9860185 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860185 ^designation[+].language = #en
* #9860185 ^designation[=].value = "Meds Unavailable"
* #9860185 ^designation[=].use.code = #SHORT
* #9860185 ^designation[+].language = #en
* #9860185 ^designation[=].value = "Drugs unavailable"
* #9860185 ^designation[+].language = #fr
* #9860185 ^designation[=].value = "Médicaments non disponibles"
* #9860185 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860185 ^designation[+].language = #en
* #9860185 ^designation[=].value = "Drugs out of stock"
* #9860185 ^designation[+].language = #en
* #9860185 ^designation[=].value = "Medications out of stock"
* #9860185 ^designation[+].language = #ht
* #9860185 ^designation[=].value = "Medikaman pa disponib"
* #9860185 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860185 ^designation[+].language = #es
* #9860185 ^designation[=].value = "Fármaco no disponible - no hay reserva"
* #9860185 ^property[0].code = #conceptclass
* #9860185 ^property[=].valueString = "Question"
* #9860185 ^property[+].code = #datatype
* #9860185 ^property[=].valueString = "Coded"
* #9860187 "Inpatient care or hospitalization" "none"
* #9860187 ^designation[0].language = #en
* #9860187 ^designation[=].value = "Inpatient care or hospitalization"
* #9860187 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860187 ^designation[+].language = #fr
* #9860187 ^designation[=].value = "Patient hospitalisé"
* #9860187 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860187 ^designation[+].language = #ht
* #9860187 ^designation[=].value = "Entène lopital"
* #9860187 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860187 ^designation[+].language = #es
* #9860187 ^designation[=].value = "Cuidado de paciente hospitalizado"
* #9860187 ^property[0].code = #conceptclass
* #9860187 ^property[=].valueString = "Misc Order"
* #9860187 ^property[+].code = #datatype
* #9860187 ^property[=].valueString = "N/A"
* #9860189 "Other" "A generic, descriptive answer which is a handwritten, non-coded response to a question."
* #9860189 ^designation[0].language = #en
* #9860189 ^designation[=].value = "Other non-coded"
* #9860189 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860189 ^designation[+].language = #fr
* #9860189 ^designation[=].value = "Autre"
* #9860189 ^designation[+].language = #sw
* #9860189 ^designation[=].value = "Nyinginezo"
* #9860189 ^designation[+].language = #es
* #9860189 ^designation[=].value = "Otro no codificado"
* #9860189 ^designation[+].language = #en
* #9860189 ^designation[=].value = "Other"
* #9860189 ^designation[+].language = #ht
* #9860189 ^designation[=].value = "Lòt"
* #9860189 ^designation[+].language = #ht
* #9860189 ^designation[=].value = "LÒT SAN-KÒD"
* #9860189 ^designation[+].language = #ht
* #9860189 ^designation[=].value = "Lòt ki pa-kode"
* #9860189 ^designation[+].language = #fr
* #9860189 ^designation[=].value = "Autre et non codé"
* #9860189 ^designation[+].language = #km
* #9860189 ^designation[=].value = "ផ្សេងៗ"
* #9860189 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860189 ^designation[+].language = #ne
* #9860189 ^designation[=].value = "अन्य"
* #9860189 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860189 ^property[0].code = #conceptclass
* #9860189 ^property[=].valueString = "Misc"
* #9860189 ^property[+].code = #datatype
* #9860189 ^property[=].valueString = "N/A"
* #9860191 "Isoniazid" "A crystalline antibacterial compound (C6H7N3O) used in the treatment of tuberculosis. "
* #9860191 ^designation[0].language = #en
* #9860191 ^designation[=].value = "Isoniazid"
* #9860191 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860191 ^designation[+].language = #en
* #9860191 ^designation[=].value = "Nydrazid"
* #9860191 ^designation[+].language = #en
* #9860191 ^designation[=].value = "Soniazio"
* #9860191 ^designation[+].language = #en
* #9860191 ^designation[=].value = "Tubizid"
* #9860191 ^designation[+].language = #en
* #9860191 ^designation[=].value = "INH"
* #9860191 ^designation[=].use.code = #SHORT
* #9860191 ^designation[+].language = #fr
* #9860191 ^designation[=].value = "Isoniazid"
* #9860191 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860191 ^designation[+].language = #ht
* #9860191 ^designation[=].value = "izoniazid"
* #9860191 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860191 ^designation[+].language = #ht
* #9860191 ^designation[=].value = "Isoniazid"
* #9860191 ^designation[+].language = #es
* #9860191 ^designation[=].value = "Isoniacida"
* #9860191 ^designation[+].language = #es
* #9860191 ^designation[=].value = "Isoniazida"
* #9860191 ^designation[+].language = #es
* #9860191 ^designation[=].value = "Isonicotinilhidrazina"
* #9860191 ^designation[+].language = #es
* #9860191 ^designation[=].value = "Ácido isonicotínco hidrazina"
* #9860191 ^property[0].code = #conceptclass
* #9860191 ^property[=].valueString = "Drug"
* #9860191 ^property[+].code = #datatype
* #9860191 ^property[=].valueString = "N/A"
* #9860193 "Ethambutol" "Anti-mycobaterial drug used to treat active tuberculosis. Always used with other antimycobacterial agents."
* #9860193 ^designation[0].language = #en
* #9860193 ^designation[=].value = "Ethambutol"
* #9860193 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860193 ^designation[+].language = #en
* #9860193 ^designation[=].value = "Myambutol"
* #9860193 ^designation[+].language = #en
* #9860193 ^designation[=].value = "E"
* #9860193 ^designation[=].use.code = #SHORT
* #9860193 ^designation[+].language = #vi
* #9860193 ^designation[=].value = "Ethambutol"
* #9860193 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860193 ^designation[+].language = #fr
* #9860193 ^designation[=].value = "Ethambutol"
* #9860193 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860193 ^designation[+].language = #ht
* #9860193 ^designation[=].value = "Ethambutol"
* #9860193 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860193 ^designation[+].language = #es
* #9860193 ^designation[=].value = "Etambutol"
* #9860193 ^property[0].code = #conceptclass
* #9860193 ^property[=].valueString = "Drug"
* #9860193 ^property[+].code = #datatype
* #9860193 ^property[=].valueString = "N/A"
* #9860195 "Streptomycin"
* #9860195 ^designation[0].language = #en
* #9860195 ^designation[=].value = "Streptomycin"
* #9860195 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860195 ^designation[+].language = #en
* #9860195 ^designation[=].value = "S"
* #9860195 ^designation[=].use.code = #SHORT
* #9860195 ^designation[+].language = #fr
* #9860195 ^designation[=].value = "Streptomycine\t"
* #9860195 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860195 ^designation[+].language = #ht
* #9860195 ^designation[=].value = "Streptomysin"
* #9860195 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860195 ^designation[+].language = #es
* #9860195 ^designation[=].value = "Estreptomicina"
* #9860195 ^property[0].code = #conceptclass
* #9860195 ^property[=].valueString = "Drug"
* #9860195 ^property[+].code = #datatype
* #9860195 ^property[=].valueString = "N/A"
* #9860197 "Pyrazinamide" "Antituberculosis agent used to treat patients with active tuberculosis, usually in combination with other agents."
* #9860197 ^designation[0].language = #en
* #9860197 ^designation[=].value = "Pyrazinamide"
* #9860197 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860197 ^designation[+].language = #en
* #9860197 ^designation[=].value = "Z"
* #9860197 ^designation[=].use.code = #SHORT
* #9860197 ^designation[+].language = #fr
* #9860197 ^designation[=].value = "Pyrazinamide"
* #9860197 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860197 ^designation[+].language = #ht
* #9860197 ^designation[=].value = "Pyrazinamide"
* #9860197 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860197 ^designation[+].language = #es
* #9860197 ^designation[=].value = "Pirazinamida"
* #9860197 ^designation[+].language = #es
* #9860197 ^designation[=].value = "Amida de ácido pirazinoico"
* #9860197 ^property[0].code = #conceptclass
* #9860197 ^property[=].valueString = "Drug"
* #9860197 ^property[+].code = #datatype
* #9860197 ^property[=].valueString = "N/A"
* #9860199 "Refusal of treatment by patient" "Patient or client refusal of or resistance to medical, psychological, or psychiatric treatment. (APA, Thesaurus of Psychological Index Terms, 8th ed.)"
* #9860199 ^designation[0].language = #en
* #9860199 ^designation[=].value = "Refusal of treatment by patient"
* #9860199 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860199 ^designation[+].language = #es
* #9860199 ^designation[=].value = "rechazo del tratamiento por el paciente"
* #9860199 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860199 ^designation[+].language = #fr
* #9860199 ^designation[=].value = "Refus de traitement par le patient"
* #9860199 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860199 ^designation[+].language = #en
* #9860199 ^designation[=].value = "Patient refused treatment"
* #9860199 ^designation[+].language = #ht
* #9860199 ^designation[=].value = "Pasyan pa vle pran medikaman"
* #9860199 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860199 ^property[0].code = #conceptclass
* #9860199 ^property[=].valueString = "Diagnosis"
* #9860199 ^property[+].code = #datatype
* #9860199 ^property[=].valueString = "Boolean"
* #9860201 "Planned treatment interruption"
* #9860201 ^designation[0].language = #en
* #9860201 ^designation[=].value = "Planned treatment interruption"
* #9860201 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860201 ^designation[+].language = #en
* #9860201 ^designation[=].value = "Planned rx interruption"
* #9860201 ^designation[=].use.code = #SHORT
* #9860201 ^property[0].code = #conceptclass
* #9860201 ^property[=].valueString = "Misc"
* #9860201 ^property[+].code = #datatype
* #9860201 ^property[=].valueString = "N/A"
* #9860203 "Non-compliance with treatment or therapy" "Not following the prescribed course of therapy or not taking prescribed medicines."
* #9860203 ^designation[0].language = #en
* #9860203 ^designation[=].value = "Non-compliance with treatment or therapy"
* #9860203 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860203 ^designation[+].language = #en
* #9860203 ^designation[=].value = "Non-adherence with treatment or therapy"
* #9860203 ^designation[+].language = #en
* #9860203 ^designation[=].value = "Poor adherence with treatment or therapy"
* #9860203 ^designation[+].language = #fr
* #9860203 ^designation[=].value = "Le non-respect d'un traitement ou d'une thérapie"
* #9860203 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860203 ^designation[+].language = #ht
* #9860203 ^designation[=].value = "Ki pa konfòm avèk tretman oswa terapi"
* #9860203 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860203 ^designation[+].language = #es
* #9860203 ^designation[=].value = "Incumplimiento del paciente - general"
* #9860203 ^designation[+].language = #es
* #9860203 ^designation[=].value = "Adherencia del paciente nula - general"
* #9860203 ^property[0].code = #conceptclass
* #9860203 ^property[=].valueString = "Finding"
* #9860203 ^property[+].code = #datatype
* #9860203 ^property[=].valueString = "N/A"
* #9860205 "Treatment never started - patient refused"
* #9860205 ^designation[0].language = #en
* #9860205 ^designation[=].value = "Treatment never started - patient refused"
* #9860205 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860205 ^designation[+].language = #fr
* #9860205 ^designation[=].value = "Traitement jamais commencer - patient refus"
* #9860205 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860205 ^designation[+].language = #ht
* #9860205 ^designation[=].value = "Tretman pa janm kòmanse - pasyan refize"
* #9860205 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860205 ^property[0].code = #conceptclass
* #9860205 ^property[=].valueString = "State"
* #9860205 ^property[+].code = #datatype
* #9860205 ^property[=].valueString = "N/A"
* #9860207 "Other patient decision"
* #9860207 ^designation[0].language = #en
* #9860207 ^designation[=].value = "Other patient decision"
* #9860207 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860207 ^property[0].code = #conceptclass
* #9860207 ^property[=].valueString = "Misc"
* #9860207 ^property[+].code = #datatype
* #9860207 ^property[=].valueString = "N/A"
* #9860209 "Patient age" "Generic answer to a question.  For example, a patient stops a medication because of his or her age."
* #9860209 ^designation[0].language = #en
* #9860209 ^designation[=].value = "Patient age"
* #9860209 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860209 ^designation[+].language = #es
* #9860209 ^designation[=].value = "Factor etario"
* #9860209 ^designation[+].language = #es
* #9860209 ^designation[=].value = "Edad del paciente"
* #9860209 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860209 ^property[0].code = #conceptclass
* #9860209 ^property[=].valueString = "Misc"
* #9860209 ^property[+].code = #datatype
* #9860209 ^property[=].valueString = "N/A"
* #9860211 "Gender identity"
* #9860211 ^designation[0].language = #en
* #9860211 ^designation[=].value = "Gender identity"
* #9860211 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860211 ^designation[+].language = #es
* #9860211 ^designation[=].value = "Identidad de género"
* #9860211 ^property[0].code = #conceptclass
* #9860211 ^property[=].valueString = "Question"
* #9860211 ^property[+].code = #datatype
* #9860211 ^property[=].valueString = "Coded"
* #9860213 "Identifies as male gender"
* #9860213 ^designation[0].language = #en
* #9860213 ^designation[=].value = "Male"
* #9860213 ^designation[=].use.code = #SHORT
* #9860213 ^designation[+].language = #en
* #9860213 ^designation[=].value = "Identifies as male gender"
* #9860213 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860213 ^designation[+].language = #es
* #9860213 ^designation[=].value = "Se identifica como género masculino"
* #9860213 ^designation[+].language = #es
* #9860213 ^designation[=].value = "Identidad de género masculino"
* #9860213 ^designation[+].language = #es
* #9860213 ^designation[=].value = "Identidad masculina"
* #9860213 ^property[0].code = #conceptclass
* #9860213 ^property[=].valueString = "Finding"
* #9860213 ^property[+].code = #datatype
* #9860213 ^property[=].valueString = "N/A"
* #9860215 "Identifies as female gender"
* #9860215 ^designation[0].language = #en
* #9860215 ^designation[=].value = "Female"
* #9860215 ^designation[=].use.code = #SHORT
* #9860215 ^designation[+].language = #en
* #9860215 ^designation[=].value = "Identifies as female gender"
* #9860215 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860215 ^designation[+].language = #es
* #9860215 ^designation[=].value = "Se identifica como género femenino"
* #9860215 ^designation[+].language = #es
* #9860215 ^designation[=].value = "Identidad de género femenino"
* #9860215 ^designation[+].language = #es
* #9860215 ^designation[=].value = "Identidad femenina"
* #9860215 ^property[0].code = #conceptclass
* #9860215 ^property[=].valueString = "Finding"
* #9860215 ^property[+].code = #datatype
* #9860215 ^property[=].valueString = "N/A"
* #9860217 "Male to female transsexual"
* #9860217 ^designation[0].language = #en
* #9860217 ^designation[=].value = "Male to female transsexual"
* #9860217 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860217 ^designation[+].language = #es
* #9860217 ^designation[=].value = "Transexual, mujer a hombre"
* #9860217 ^property[0].code = #conceptclass
* #9860217 ^property[=].valueString = "Finding"
* #9860217 ^property[+].code = #datatype
* #9860217 ^property[=].valueString = "N/A"
* #9860219 "Female to male transsexual"
* #9860219 ^designation[0].language = #en
* #9860219 ^designation[=].value = "Female to male transsexual"
* #9860219 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860219 ^designation[+].language = #es
* #9860219 ^designation[=].value = "Cirugía intersexual, conversión de sexo femenino a sexo masculino"
* #9860219 ^property[0].code = #conceptclass
* #9860219 ^property[=].valueString = "Finding"
* #9860219 ^property[+].code = #datatype
* #9860219 ^property[=].valueString = "N/A"
* #9860221 "Identifies as non-binary gender"
* #9860221 ^designation[0].language = #en
* #9860221 ^designation[=].value = "Identifies as non-binary gender"
* #9860221 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860221 ^designation[+].language = #es
* #9860221 ^designation[=].value = "Se identifica como género no binario"
* #9860221 ^designation[+].language = #es
* #9860221 ^designation[=].value = "Identidad de género no binario"
* #9860221 ^property[0].code = #conceptclass
* #9860221 ^property[=].valueString = "Finding"
* #9860221 ^property[+].code = #datatype
* #9860221 ^property[=].valueString = "N/A"
* #9860223 "Female gender"
* #9860223 ^designation[0].language = #en
* #9860223 ^designation[=].value = "Female gender"
* #9860223 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860223 ^designation[+].language = #fr
* #9860223 ^designation[=].value = "Sexe féminin"
* #9860223 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860223 ^designation[+].language = #en
* #9860223 ^designation[=].value = "Female"
* #9860223 ^designation[+].language = #ru
* #9860223 ^designation[=].value = "Женщины"
* #9860223 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860223 ^designation[+].language = #ht
* #9860223 ^designation[=].value = "Sèks fi"
* #9860223 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860223 ^designation[+].language = #km
* #9860223 ^designation[=].value = "ស្រី"
* #9860223 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860223 ^designation[+].language = #es
* #9860223 ^designation[=].value = "Mujer"
* #9860223 ^property[0].code = #conceptclass
* #9860223 ^property[=].valueString = "Misc"
* #9860223 ^property[+].code = #datatype
* #9860223 ^property[=].valueString = "N/A"
* #9860225 "Restart medication"
* #9860225 ^designation[0].language = #es
* #9860225 ^designation[=].value = "Reinicio de la medicación"
* #9860225 ^designation[+].language = #en
* #9860225 ^designation[=].value = "Restart medication"
* #9860225 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860225 ^property[0].code = #conceptclass
* #9860225 ^property[=].valueString = "Procedure"
* #9860225 ^property[+].code = #datatype
* #9860225 ^property[=].valueString = "N/A"
* #9860227 "Currently breastfeeding child" "Question on encounter form: \"Is the child currently being breastfed?\""
* #9860227 ^designation[0].language = #en
* #9860227 ^designation[=].value = "Currently breastfeeding child"
* #9860227 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860227 ^designation[+].language = #fr
* #9860227 ^designation[=].value = "Allaitement de l'enfant en cours"
* #9860227 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860227 ^designation[+].language = #ht
* #9860227 ^designation[=].value = "Ap bay tete nan moman a"
* #9860227 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860227 ^designation[+].language = #fr
* #9860227 ^designation[=].value = "Allaite actuellement"
* #9860227 ^designation[+].language = #es
* #9860227 ^designation[=].value = "Amamantamiento (madre)"
* #9860227 ^property[0].code = #conceptclass
* #9860227 ^property[=].valueString = "Question"
* #9860227 ^property[+].code = #datatype
* #9860227 ^property[=].valueString = "Coded"
* #9860229 "New patient identifier" "Link to new patient identifier if patient has transferred out of facility"
* #9860229 ^designation[0].language = #en
* #9860229 ^designation[=].value = "New patient ID"
* #9860229 ^designation[+].language = #en
* #9860229 ^designation[=].value = "New patient identifier"
* #9860229 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860229 ^property[0].code = #conceptclass
* #9860229 ^property[=].valueString = "Misc"
* #9860229 ^property[+].code = #datatype
* #9860229 ^property[=].valueString = "Text"
* #9860231 "Reason for lost to follow up" "Why the patient did not follow up with the health care?"
* #9860231 ^designation[0].language = #en
* #9860231 ^designation[=].value = "Reason for lost to follow up"
* #9860231 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860231 ^property[0].code = #conceptclass
* #9860231 ^property[=].valueString = "Misc"
* #9860231 ^property[+].code = #datatype
* #9860231 ^property[=].valueString = "Text"
* #9860233 "Health facility"
* #9860233 ^designation[0].language = #en
* #9860233 ^designation[=].value = "Health facility"
* #9860233 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860233 ^designation[+].language = #fr
* #9860233 ^designation[=].value = "Centre médical"
* #9860233 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860233 ^designation[+].language = #es
* #9860233 ^designation[=].value = "Institución sanitaria"
* #9860233 ^property[0].code = #conceptclass
* #9860233 ^property[=].valueString = "Misc"
* #9860233 ^property[+].code = #datatype
* #9860233 ^property[=].valueString = "N/A"
* #9860235 "Community" "People with whom the client lives in the same geographical area or neighborhood"
* #9860235 ^designation[0].language = #en
* #9860235 ^designation[=].value = "Community"
* #9860235 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860235 ^designation[+].language = #id
* #9860235 ^designation[=].value = "Masyarakat"
* #9860235 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860235 ^designation[+].language = #es
* #9860235 ^designation[=].value = "Comunidad"
* #9860235 ^designation[+].language = #es
* #9860235 ^designation[=].value = "Comunidad (contexto social)"
* #9860235 ^property[0].code = #conceptclass
* #9860235 ^property[=].valueString = "Misc"
* #9860235 ^property[+].code = #datatype
* #9860235 ^property[=].valueString = "N/A"
* #9860237 "mobile voluntary counseling and testing program"
* #9860237 ^designation[0].language = #en
* #9860237 ^designation[=].value = "mobile VCT program"
* #9860237 ^designation[=].use.code = #SHORT
* #9860237 ^designation[+].language = #en
* #9860237 ^designation[=].value = "mobile voluntary counseling and testing program"
* #9860237 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860237 ^property[0].code = #conceptclass
* #9860237 ^property[=].valueString = "Misc"
* #9860237 ^property[+].code = #datatype
* #9860237 ^property[=].valueString = "Coded"
* #9860239 "Home based HIV testing program"
* #9860239 ^designation[0].language = #en
* #9860239 ^designation[=].value = "Home based HIV testing program"
* #9860239 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860239 ^designation[+].language = #en
* #9860239 ^designation[=].value = "HCT program"
* #9860239 ^designation[=].use.code = #SHORT
* #9860239 ^designation[+].language = #fr
* #9860239 ^designation[=].value = "Programme de dépistage du VIH à domicile"
* #9860239 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860239 ^designation[+].language = #ht
* #9860239 ^designation[=].value = "Pwogram tès VIH sante kominote"
* #9860239 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860239 ^property[0].code = #conceptclass
* #9860239 ^property[=].valueString = "Misc"
* #9860239 ^property[+].code = #datatype
* #9860239 ^property[=].valueString = "N/A"
* #9860241 "HIV positive" "Includes the spectrum of human immunodeficiency virus infections that range from asymptomatic seropositivity, thru AIDS-related complex (ARC), to acquired immunodeficiency syndrome (AIDS)."
* #9860241 ^designation[0].language = #en
* #9860241 ^designation[=].value = "HIV positive"
* #9860241 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860241 ^designation[+].language = #es
* #9860241 ^designation[=].value = "virus de la inmunodeficiencia humana positivo"
* #9860241 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860241 ^designation[+].language = #fr
* #9860241 ^designation[=].value = "Séropositif"
* #9860241 ^designation[+].language = #fr
* #9860241 ^designation[=].value = "Virus de l'immunodéficience humaine positif"
* #9860241 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860241 ^designation[+].language = #vi
* #9860241 ^designation[=].value = "Tích cực HIV"
* #9860241 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860241 ^property[0].code = #conceptclass
* #9860241 ^property[=].valueString = "Diagnosis"
* #9860241 ^property[+].code = #datatype
* #9860241 ^property[=].valueString = "N/A"
* #9860243 "Negative" "Response to a finding or test result."
* #9860243 ^designation[0].language = #en
* #9860243 ^designation[=].value = "Negative"
* #9860243 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860243 ^designation[+].language = #fr
* #9860243 ^designation[=].value = "Négatif"
* #9860243 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860243 ^designation[+].language = #en
* #9860243 ^designation[=].value = "(-)"
* #9860243 ^designation[+].language = #en
* #9860243 ^designation[=].value = "-"
* #9860243 ^designation[+].language = #en
* #9860243 ^designation[=].value = "Neg"
* #9860243 ^designation[+].language = #es
* #9860243 ^designation[=].value = "Negativo"
* #9860243 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860243 ^designation[+].language = #es
* #9860243 ^designation[=].value = "Negativa"
* #9860243 ^designation[+].language = #es
* #9860243 ^designation[=].value = "Neg"
* #9860243 ^designation[+].language = #es
* #9860243 ^designation[=].value = "(-)"
* #9860243 ^designation[+].language = #sw
* #9860243 ^designation[=].value = "Hasi"
* #9860243 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860243 ^designation[+].language = #ht
* #9860243 ^designation[=].value = "Négatif"
* #9860243 ^designation[=].use.code = #FULLY_SPECIFIED
* #9860243 ^property[0].code = #conceptclass
* #9860243 ^property[=].valueString = "Misc"
* #9860243 ^property[+].code = #datatype
* #9860243 ^property[=].valueString = "N/A"
* #9921831 "HIV program end date" "Question on encounter form. The date the patient was removed from the HIV program."
* #9921831 ^designation[0].language = #en
* #9921831 ^designation[=].value = "HIV program end date"
* #9921831 ^designation[=].use.code = #FULLY_SPECIFIED
* #9921831 ^designation[+].language = #fr
* #9921831 ^designation[=].value = "Date de fin du programme VIH"
* #9921831 ^designation[=].use.code = #FULLY_SPECIFIED
* #9921831 ^designation[+].language = #ht
* #9921831 ^designation[=].value = "Dat fini ak pwogram VIH"
* #9921831 ^designation[=].use.code = #FULLY_SPECIFIED
* #9921831 ^property[0].code = #conceptclass
* #9921831 ^property[=].valueString = "Question"
* #9921831 ^property[+].code = #datatype
* #9921831 ^property[=].valueString = "Datetime"
* #5240 "Lost to followup" "Patients that are lost to followup.. boolean question."
* #5240 ^designation[0].language = #en
* #5240 ^designation[=].value = "Lost to followup"
* #5240 ^designation[=].use.code = #FULLY_SPECIFIED
* #5240 ^property[0].code = #conceptclass
* #5240 ^property[=].valueString = "Question"
* #5240 ^property[+].code = #datatype
* #5240 ^property[=].valueString = "Boolean"