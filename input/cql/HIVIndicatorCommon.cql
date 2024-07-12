library HIVIndicatorCommon version '0.0.1' 

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include WHOCommon called WCom
include FHIRCommon called FC
include HIVConcepts called HC
include HIVConceptsCustom called HCC

parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2020-12-31]

context Patient

/*
 * HIV Positive during the measurement period
 * Does issued imply that results returned to tester
 * or should use communication or encounter resource to specify?
 */



define "HIV Positive Condition":
[Condition] C
    where C.clinicalStatus ~ HCC."active"
    and exists(C.category CC where CC ~ HCC."encounter-diagnosis")
    and C.code ~ HC."HIV-positive - HIV.B.DE116"

define "HIV Positive Observation":
[Observation] O
    where O.status in {'final', 'amended'}
    and O.code ~ HC."Rapid diagnostic test for HIV - HIV.B.DE82"
    and O.value ~ HC."HIV-positive - HIV.B.DE116"

define "HIV Negative Observation":
[Observation] O
    where O.status in {'final', 'amended'}
    and O.code ~ HC."Rapid diagnostic test for HIV - HIV.B.DE82"
    and O.value ~ HC."HIV-negative - HIV.B.DE117"

define "HIV test resulted":
  [Observation] O
    where O.status in {'final', 'amended'}
    and O.code ~ HC."Rapid diagnostic test for HIV - HIV.B.DE82"

define "HIV Treatment Active":
[MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."On ART - HIV.H.DE47")


define "HIV PREP Active":
[MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")

 define "Client is at elevated risk for HIV acquisition":
    [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.code ~ HC."At elevated risk for HIV acquisition - HIV.B.DE225"


define "Patient Deceased before end of Measurement Period":
  case 
    when Patient.deceased is FHIR.boolean and Patient.deceased ~ true then (Patient.meta.lastUpdated before end of "Measurement Period")
    when Patient.deceased is FHIR.dateTime then Patient.deceased as FHIR.dateTime before end of "Measurement Period"
    else false
  end

define "Patient Deceased during Measurement Period":
  case 
    when Patient.deceased is FHIR.boolean and Patient.deceased ~ true then Patient.meta.lastUpdated before end of  "Measurement Period" and  Patient.meta.lastUpdated after start of "Measurement Period"
    when Patient.deceased is FHIR.dateTime then Patient.deceased as FHIR.dateTime before end of  "Measurement Period" and Patient.deceased as FHIR.dateTime after start of "Measurement Period"
    else false
  end

/* End of care because of transferring out*/

define "Transfer Out at Facility during the measurement period":
    exists(
    [EpisodeOfCare] EOC
    where exists(EOC.type T where T ~ HC."On ART - HIV.H.DE47") 
    and (exists (
      EOC.statusHistory H
      where H.status = 'finished'
      and H.period ends during "Measurement Period"
    ) 
    or (
      EOC.status = 'finished'
      and EOC.period ends during "Measurement Period"
    )
    )
    )

define "Lost to Follow Up during the measurement period":
    exists("HIV Treatment Active" H
   where H.effective starts before end of "Measurement Period"
    and H.effective ends after start of "Measurement Period"
	and not (H.effective ends after (end of "Measurement Period" - 28 days))
   )

/*
 * By Age Stratifiers
 * (0–4, 5–9, 10–14, 15–19, 20–24, 25–29, 30–34, 35–39, 40–44, 45–49, 50+ years)
 * 
 */
define "By Age Stratifier":
    case 
        when AgeInYearsAt(start of "Measurement Period") <= 4 then '0-4'
        when AgeInYearsAt(start of "Measurement Period") <= 9 then '5-9'
        when AgeInYearsAt(start of "Measurement Period") <= 14 then '10–14'
        when AgeInYearsAt(start of "Measurement Period") <= 19 then '15–19'
        when AgeInYearsAt(start of "Measurement Period") <= 24 then '20–24'
        when AgeInYearsAt(start of "Measurement Period") <= 29 then '25–29'
        when AgeInYearsAt(start of "Measurement Period") <= 34 then '30–34'
        when AgeInYearsAt(start of "Measurement Period") <= 39 then '35–39'
        when AgeInYearsAt(start of "Measurement Period") <= 44 then '40–44'
        when AgeInYearsAt(start of "Measurement Period") <= 49 then '45–49'
        when AgeInYearsAt(start of "Measurement Period") >= 50 then '50+'
        else null
    end
  
  /*
 * By Age Stratifiers
 * Age (0–4, 5–9, 10–14, 15–19, 20–24, 25–49, 50+ years)
 * 
 */
define "By Age Stratifier 2":
    case 
        when AgeInYearsAt(start of "Measurement Period") <= 4 then '0-4'
        when AgeInYearsAt(start of "Measurement Period") <= 9 then '5-9'
        when AgeInYearsAt(start of "Measurement Period") <= 14 then '10–14'
        when AgeInYearsAt(start of "Measurement Period") <= 19 then '15–19'
        when AgeInYearsAt(start of "Measurement Period") <= 24 then '20–24'
        when AgeInYearsAt(start of "Measurement Period") <= 49 then '25–49'
        when AgeInYearsAt(start of "Measurement Period") >= 50 then '50+'
        else null
    end

define "By Age Stratifier 3":
    case 
        when AgeInYearsAt(start of "Measurement Period") >= 15 and AgeInYearsAt(start of "Measurement Period") <= 19 then '15-19'
        when AgeInYearsAt(start of "Measurement Period") <= 24 then '20-24'
        when AgeInYearsAt(start of "Measurement Period") <= 49 then '25–49'
        when AgeInYearsAt(start of "Measurement Period") >= 50 then '50+'
        else null
    end

/*
 * By state stratifier
 */

define "By Geographic Region Stratifier":
    First(Patient.address A where A.use in { 'home' }).state

/*
 * By Administrative Gender of Patient Stratifier
 * Need to expand codes
 */

define "By Administrative Gender Stratifier":
    case 
        when Patient.gender = 'male' then HC."Male"
        when Patient.gender = 'female' then HC."Female"
        when Patient.gender = 'transgender female' then HC."Transgender female"
        when Patient.gender = 'transgender male' then HC."Transgender male"
        else HC."Other - HIV.A.DE23"
    end

/*
 * Key populations (men who have sex with men, people living in prisons and other closed settings, people who inject drugs, sex workers, trans and gender diverse people)
 */

 define SW:
  exists (
    [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.code ~ HC."Sex worker - HIV.B.DE51"
  )

 define MSM:
  exists (
    [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.code ~ HC."Men who have sex with men"
  )

  define Trans:
  exists (
    [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.code ~ HC."Trans and gender-diverse people - HIV.B.DE53"
  )

  define PWID:
  exists (
    [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.code ~ HC."People who inject drugs - HIV.B.DE54"
  )

  define Prisoner:
  exists (
    [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.code ~ HC."People living in prisons and other closed settings"
  )

  define TB_diagnosed:
  exists(
    ([Condition] C
    where C.clinicalStatus ~ HCC."active"
    and exists(C.category CC where CC ~ HCC."encounter-diagnosis")
    and C.code ~ HC."Diagnosed TB"
    and C.onset during "Measurement Period")
  )
  
  define TB_presumptive:
  exists(
    ([Condition] C
    where C.clinicalStatus ~ HCC."active"
    and exists(C.category CC where CC ~ HCC."encounter-diagnosis")
    and C.code ~ HC."Presumptive TB - HIV.D.DE945"
    and C.onset during "Measurement Period")
  )

/*@triggeredBy Encounter with location = community level testing*/

define "Community_testing":
  exists([Observation] O
    with [Encounter] E
      such that O.encounter.references(E) and exists(E.location.physicalType PT where PT ~  HC."Community-level testing") 
  where (O.status in { 'final', 'amended' }
  and O.code ~ HC."Rapid diagnostic test for HIV - HIV.B.DE82"
  and O.issued during "Measurement Period")
  )

/*@triggeredBy Encounter with location = facility level testing*/
define "Facility_testing":
  exists([Observation] O
    with [Encounter] E
      such that O.encounter.references(E) and exists(E.location.physicalType PT where PT ~  HC."Facility-level testing")
  where (O.status in { 'final', 'amended' }
  and O.code ~ HC."Rapid diagnostic test for HIV - HIV.B.DE82"
  and O.issued during "Measurement Period")
  )

//lifted this from ANC DAK
define "ANC_case":
exists(
    [EpisodeOfCare] EOC
    where exists(EOC.type T where T ~ HC."Already on ART at first antenatal care visit")
    and (exists (
      EOC.statusHistory H
      where H.period overlaps "Measurement Period"
    ) 
    or (
      EOC.period overlaps "Measurement Period"
    )
    )
    )
  

  define "PREP Product Oral":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and (MS.medication ~ HC."TDF + FTC - HIV.C.DE18" or
    MS.medication ~ HC."TDF - HIV.C.DE19" or
    MS.medication ~ HC."TDF + 3TC - HIV.C.DE20" or
    MS.medication ~ HC."Other TDF-based regimen")
  )

  define "PREP Product long-acting device":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and MS.medication ~ HC."Dapivirine vaginal ring DVR - HIV.C.DE22"
  )

  define "PREP Product long-acting injectable":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and MS.medication ~ HC."CAB-LA - HIV.C.DE23"
  )
  
  define "PREP first time":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and exists(MS.statusReason SR where SR ~ HC."First-time user - HIV.C.DE25")
  )

  define "PREP Continuing user":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and exists(MS.statusReason SR where SR ~ HC."Continuing user")
  )
  
  define "PREP Restarting":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and exists(MS.statusReason SR where SR ~ HC."Restarting following a period of not taking PrEP")
  )

  define "Daily_oral_PrEP":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and exists(MS.dosage.additionalInstruction AI where AI ~ HC."Daily oral PrEP")
  )

  define "Event_driven_PrEP":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and exists(MS.dosage.additionalInstruction AI where AI ~ HC."Event-driven PrEP 2+1+1") 
  )

  define "other_dosing_PrEP":
  exists([MedicationStatement] MS
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."Currently on PrEP")
    and exists(MS.dosage.additionalInstruction AI where AI ~ HC."Other PrEP dosing type") 
  )


  define patientGroups:
  List<String>{
    if SW then 'SW' else null,
    if MSM then 'MSM' else null,
    if Trans then 'Trans' else null,
    if PWID then 'PWID' else null,
    if Prisoner then 'Prisoner' else null
  }

  define setting:
  List<String>{
    if Community_testing then 'Community-level testing' else null,
    if Facility_testing then 'Facility-level testing' else null
  }

  define anc:
  List<String>{
    if ANC_case then 'ANC case' else null
  }

  define tb:
  List<String>{
    if TB_diagnosed then 'Diagnosed TB' else null,
    if TB_presumptive then 'Presumptive TB' else null
  }

  define prep_product:
  List<String>{
    if `PREP Product Oral` then 'PREP Product Oral' else null,
    if `PREP Product long-acting device` then 'PREP Product long-acting device' else null,
    if `PREP Product long-acting injectable` then 'PREP Product long-acting injectable' else null
  }

  define prep_experience:
  List<String>{
    if `PREP first time` then 'PREP first time' else null,
    if `PREP Continuing user` then 'PREP Continuing user' else null,
    if `PREP Restarting` then 'PREP Restarting' else null
  }

  define prep_dosing:
  List<String>{
    if `Daily_oral_PrEP` then 'Daily oral PrEP' else null,
    if `Event_driven_PrEP` then 'Event driven PrEP' else null,
    if `other_dosing_PrEP` then 'Other PrEP dosing type' else null
  }

//need to add Time to start ART (within 7, 30 or 90 days of diagnosis, as per country guidelines)
//need to add Disaggregation by time since diagnosis
  


/* 
* DAK has codes for HAART misspecified 
* ICD-10 Z92.2	Other prophylactic chemotherapy		
* LOINC "54825-5	"	On scheduled pain medication regimen in last 7 days
*
* Should discuss 
*/







/*
* Kenya EMR defined as HIV positive condition
* Will need to discuss if produce flags through conditions for concepts to use in indicator calculation such as HIV positive and On ART
* However, we have moved forward with a more prescriptive approach 
* Inevitably our approach requires that certain data elements be available
*/

/*
 * HIV Treatment during the measurement period
 * uses dosage and dispensation amount to estimate last day of medication
 * medication should be dispensed before end of measurement period
 * medication should last until after 28 days after the end of the measurement period
 * This takes into account lost to follow up
 */

/*
*define "HIV Treatment during the measurement period":
*   [MedicationDispense] MD
*    where MD.status in { 'final', 'amended', 'corrected' }
*    and MD.medication ~ 'Antiretroviral'
*    and MD.whenHandedOver before end of "Measurement Period"
*    and (MD.whenHandedOver + MD.dosageInstruction[0].timing.repeat.duration.value * MedicationDispense.quantity.value) after (measurementPeriod.end - 28 days)
*/ 

/*
* Immunization defines HAART as
*  exists([MedicationAdministration] A where ExtractMedicationCode(A.medication) in IMMZc."ARV Drugs" and A.status = 'in-progress')
* I believe this is the incorrect resource unless they mean to say that medication is given during a medical encounter
* would like to discuss 
*/ 

/** 
 * Patient Deceased During Measurement Period
 * Immunization defines this as true when is a boolean. This may have the effect of deleting a person from indicators in all calculations
 * Should intend to use when patient.deceased FHIR boolean was updated to TRUE if no other date is available
 * Kenya EMR example does not account for when deceased is just a boolean
 */
