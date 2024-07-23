library HIVCommon version '0.0.1' 

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include WHOCommon called WCom
//include FHIRCommon called FC
include HIVConcepts called HC
include HIVConceptsCustom called HCC

parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2020-12-31]
parameter "Measurement Date" Date default @2020-01-01

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
    and O.code ~ HC."HIV status"
    and O.value ~ HC."HIV-positive - HIV.B.DE116"

define "HIV Positive Observation - HIV Self Test":
[Observation] O
    where O.status in {'final', 'amended'}
    and O.code ~ HC."HIV self-test"
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
    and exists(MS.reasonCode C where C ~ HC."PrEP for HIV prevention")

 define "Client is at elevated risk for HIV acquisition":
    [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.code ~ HC."At elevated risk for HIV acquisition - HIV.B.DE225"

define "PREP Prescription":
    [MedicationRequest] MR
        where MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HC."PrEP for HIV prevention"

define "PEP Prescription":
    [MedicationRequest] MR
        where MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HC."PEP for HIV prevention"

define "PEP Prescribed before start of Measurement Period and Completed":
  [MedicationStatement] MS
    with [MedicationRequest] MR
      such that MS.basedOn.references(MR) and MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HC."PEP for HIV prevention"
        and MR.authoredOn before end of "Measurement Period"
  where (MS.status = 'recorded'
  and exists(MS.reasonCode C where C ~ HC."PrEP for HIV prevention")
  )

define "PEP Prescribed during Measurement Period and Completed":
  [MedicationStatement] MS
    with [MedicationRequest] MR
      such that MS.basedOn.references(MR) and MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HC."PEP for HIV prevention"
        and MR.authoredOn after start of "Measurement Period"
        and MR.authoredOn before end of "Measurement Period"
  where (MS.status = 'recorded'
  and exists(MS.reasonCode C where C ~ HC."PrEP for HIV prevention")
  )

define "HIV Test Positive After PEP Prescribed during Measurement Period":
  [Observation: HC."HIV test result - HIV.B.DE111"] O
    with [MedicationRequest] MR
      such that O.basedOn.references(MR) and MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HC."PEP for HIV prevention"
        and MR.authoredOn after start of "Measurement Period"
        and MR.authoredOn before end of "Measurement Period"
        and O.issued before (MR.authoredOn + 3 months)
  where ( O.status in {'final', 'amended'}
    and O.value ~ HC."HIV-positive - HIV.B.DE112"
  )

define "Needle Syringe Dispensed":  
  [DeviceUseStatement] DUS
  with [Observation: HC."Key population member* - HIV.E.DE113"] O
      such that DUS.reasonReference.references(O) 
        and O.status in { 'final', 'amended', 'corrected' }
        and exists(O.category OC where OC ~ HCC."social-history")
        and O.value ~ HC."People who inject drugs - HIV.B.DE54"
  where DUS.status = 'completed'

define PWID_person:
  [Observation: HC."Key population member* - HIV.E.DE113"] O
  where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."People who inject drugs - HIV.B.DE54"

define "OAMT_initiated":
exists(
    [EpisodeOfCare] EOC
    where exists(EOC.type T where T ~ HC."OAMT")
    and (exists (
      EOC.statusHistory H
      where H.period starts after start of "Measurement Period"
      and H.period starts before end of "Measurement Period"
    ) 
    or (
      EOC.period starts after start of "Measurement Period"
      and EOC.period starts before end of "Measurement Period"
    )
    )
    )

define "OAMT_retained":
exists(
    [EpisodeOfCare] EOC
    where exists(EOC.type T where T ~ HC."OAMT")
    and (exists (
      EOC.statusHistory H
      where H.period starts after start of "Measurement Period"
      and H.period starts before end of "Measurement Period"
      and H.period ends after (end of "Measurement Period" + 6 months)
    ) 
    or (
      EOC.period starts after start of "Measurement Period"
      and EOC.period starts before end of "Measurement Period"
      and (EOC.period ends after (end of "Measurement Period" + 6 months)
      or end of EOC.period is null)
    )
    )
    )

define "methadone_prescribed":
[MedicationRequest] MR
        where MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HCC."methadone"

define "buprenorphine_prescribed":
[MedicationRequest] MR
        where MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HCC."buprenorphine"
  
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

define "HIV Status":
    case 
        when exists("HIV Positive Condition" C where C.onset before end of "Measurement Period") then HC."HIV-positive - HIV.B.DE116"
        when not exists("HIV Positive Condition" C where C.onset before end of "Measurement Period") and exists("HIV Negative Observation" O where O.issued before end of "Measurement Period") then  HC."HIV-negative - HIV.B.DE117"
        else HC."Unknown - HIV.B.DE118"
    end

/*
 * Key populations (men who have sex with men, people living in prisons and other closed settings, people who inject drugs, sex workers, trans and gender diverse people)
 */

 define SW:
  exists (
    [Observation: HC."Key population member* - HIV.E.DE113"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."Sex worker - HIV.B.DE51"
  )

 define MSM:
  exists (
    [Observation: HC."Key population member* - HIV.E.DE113"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."Men who have sex with men"
  )

  define Trans:
  exists (
    [Observation: HC."Key population member* - HIV.E.DE113"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."Trans and gender-diverse people - HIV.B.DE53"
  )

  define PWID:
  exists (
    [Observation: HC."Key population member* - HIV.E.DE113"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."People who inject drugs - HIV.B.DE54"
  )

  define Prisoner:
  exists (
    [Observation: HC."Key population member* - HIV.E.DE113"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."People living in prisons and other closed settings"
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


define Exposure_Occupational:
  exists (
    [Observation: HC."HIV exposure type*"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."Occupational"
  )

define Exposure_Non_Occupational_violent:
  exists (
    [Observation: HC."HIV exposure type*"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."Non-occupational violent"
  )

define Exposure_Non_Occupational_consensual_sex:
  exists (
    [Observation: HC."HIV exposure type*"] O
    where O.status in { 'final', 'amended', 'corrected' }
    and exists(O.category OC where OC ~ HCC."social-history")
    and O.value ~ HC."Non-occupational consensual sex"
  )

define hiv_exposure_type:
  List<String>{
    if Exposure_Occupational then 'Occupational' else null,
    if Exposure_Non_Occupational_violent then 'Non-occupational violent' else null,
    if Exposure_Non_Occupational_consensual_sex then 'Non-occupational consensual sex' else null
  }

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


/*
define "PREP Prescription Days":
  Sum(
    (
      collapse (
        [MedicationRequest] MR
          where MR.status = 'completed'
          and MR.intent = 'order'
          and MR.medication ~ HC."PrEP for HIV prevention"
        return WComV2."Prescription Relevant Period"( MR ) intersect "Measurement Period"
      )
    ) PREPUseInterval
      return days between start of PREPUseInterval and end of PREPUseInterval
  )
*/


define function GetDurationInDays(value FHIR.Duration): // returns Decimal:
    case value.code.value
      when 'a' then value.value * 365.0
      when 'mo' then value.value.value * 30.0
      when 'wk' then value.value.value * 7.0
      when 'd' then value.value.value
      when 'h' then value.value.value / 24.0
      when 'min' then value.value.value / 60.0 / 24.0
      when 's' then value.value.value / 60.0 / 60.0 / 24.0
      when 'ms' then value.value.value / 60.0 / 60.0 / 24.0 / 1000.0
      else Message(1000, true, 'Undefined', 'Error', 'Unsupported duration unit ' + value.code.value)
    end

define function "Prescription Relevant Period"(prescription FHIR.MedicationRequest):
  if (
    prescription.authoredOn is not null and prescription.dispenseRequest is not null
      and prescription.dispenseRequest.expectedSupplyDuration is not null
  )
  then Interval[
    date from prescription.authoredOn,
    date from prescription.authoredOn + System.Quantity{ value: GetDurationInDays(prescription.dispenseRequest.expectedSupplyDuration), unit: 'days' }
  ]
  else null

//System.Integer
define function ToDaily(frequency System.Integer, period System.Quantity):
  case period.unit
    when 'h' then frequency * (24.0 / period.value)
    when 'min' then frequency * (24.0 / period.value) * 60
    when 's' then frequency * (24.0 / period.value) * 60 * 60
    when 'd' then frequency * (24.0 / period.value) / 24
    when 'wk' then frequency * (24.0 / period.value) / (24 * 7)
    when 'mo' then frequency * (24.0 / period.value) / (24 * 30) /* assuming 30 days in month */
    when 'a' then frequency * (24.0 / period.value) / (24 * 365) /* assuming 365 days in year */
    when 'hour' then frequency * (24.0 / period.value)
    when 'minute' then frequency * (24.0 / period.value) * 60
    when 'second' then frequency * (24.0 / period.value) * 60 * 60
    when 'day' then frequency * (24.0 / period.value) / 24
    when 'week' then frequency * (24.0 / period.value) / (24 * 7)
    when 'month' then frequency * (24.0 / period.value) / (24 * 30) /* assuming 30 days in month */
    when 'year' then frequency * (24.0 / period.value) / (24 * 365) /* assuming 365 days in year */
    when 'hours' then frequency * (24.0 / period.value)
    when 'minutes' then frequency * (24.0 / period.value) * 60
    when 'seconds' then frequency * (24.0 / period.value) * 60 * 60
    when 'days' then frequency * (24.0 / period.value) / 24
    when 'weeks' then frequency * (24.0 / period.value) / (24 * 7)
    when 'months' then frequency * (24.0 / period.value) / (24 * 30) /* assuming 30 days in month */
    when 'years' then frequency * (24.0 / period.value) / (24 * 365) /* assuming 365 days in year */
    else null
  end

  define function "HasEnd"(period Interval<DateTime> ):
  not (end of period is null
    or end of period = maximum DateTime
)

  define function MedicationRequestPeriod(Request "MedicationRequest"):
  Request R
    let
      dosage: singleton from R.dosageInstruction,
      doseAndRate: singleton from dosage.doseAndRate,
      doseRange: doseAndRate.dose as Range,
      doseQuantity: doseAndRate.dose as SimpleQuantity,
      dose: Coalesce(end of doseRange, doseQuantity),
      timing: dosage.timing,
      frequency: Coalesce(timing.repeat.frequencyMax, timing.repeat.frequency),
      period: System.Quantity { value: timing.repeat.period, unit: timing.repeat.periodUnit.value },
      dosesPerDay: Coalesce(ToDaily(FHIRHelpers.ToInteger(frequency), period), Count(timing.repeat.timeOfDay), 1.0),
      boundsPeriod: timing.repeat.bounds as Period,
      daysSupply: R.dispenseRequest.expectedSupplyDuration,
      quantity: R.dispenseRequest.quantity,
      refills: Coalesce(R.dispenseRequest.numberOfRepeatsAllowed, 0),
      startDate:
        Coalesce(
          start of boundsPeriod,
          start of R.dispenseRequest.validityPeriod,
          R.authoredOn
        )
    return
      if HasEnd(boundsPeriod) then
        Interval[startDate, end of boundsPeriod]
      else
        (
          Coalesce(daysSupply, quantity / (dose * dosesPerDay))
            * (1 + refills)
        ) durationInDays
          return Interval[startDate, startDate + durationInDays]


define function "DosesPerDay"(frequency Code):
	/*Calculates the cumulative dose per day for each prescription*/
	case
		when frequency ~ HCC."Once daily (qualifier value)" then 1.0
		when frequency ~ HCC."Twice a day (qualifier value)" then 2.0
		when frequency ~ HCC."Three times daily (qualifier value)" then 3.0
		when frequency ~ HCC."Four times daily (qualifier value)" then 4.0
		when frequency ~ HCC."Every twenty four hours (qualifier value)" then 1.0
		when frequency ~ HCC."Every twelve hours (qualifier value)" then 2.0
		when frequency ~ HCC."Every thirty six hours (qualifier value)" then 0.67
		when frequency ~ HCC."Every eight hours (qualifier value)" then 3.0
		when frequency ~ HCC."Every four hours (qualifier value)" then 6.0
		when frequency ~ HCC."Every six hours (qualifier value)" then 4.0
		when frequency ~ HCC."Every seventy two hours (qualifier value)" then 0.34
		when frequency ~ HCC."Every forty eight hours (qualifier value)" then 0.5
		when frequency ~ HCC."Every eight to twelve hours (qualifier value)" then 2.0
		when frequency ~ HCC."Every six to eight hours (qualifier value)" then 3.0
		when frequency ~ HCC."Every three to four hours (qualifier value)" then 6.0
		when frequency ~ HCC."Every three to six hours (qualifier value)" then 4.0
		when frequency ~ HCC."Every two to four hours (qualifier value)" then 6.0
		when frequency ~ HCC."One to four times a day (qualifier value)" then 4.0
		when frequency ~ HCC."One to three times a day (qualifier value)" then 3.0
		when frequency ~ HCC."One to two times a day (qualifier value)" then 2.0
		else null 
	end

  //define function "GetMedicationDailyDose"(dosage Quantity, dosesPerDay Decimal):
  //dosage * Quantity { value: dosesPerDay, unit: '/d' }


define "methadone_prescribed at date":
[MedicationRequest] MR
        where MR.status = 'completed'
        and MR.intent = 'order'
        and MR.medication ~ HCC."methadone"
        //and "GetMedicationDailyDose"(MR.dosageInstruction, "DosesPerDay"(singleton from MR.dosageInstruction.timing.repeat.frequencyMax)) >= 60 'mg/d'
        and MedicationRequestPeriod(MR) starts before "Measurement Date"
        and MedicationRequestPeriod(MR) ends after "Measurement Date"

define "VMMC_done":
[Procedure] P
  where P.status = 'completed'
  and P.code ~ HC."Voluntary medical male circumcision VMMC"

define "VMMC_adverse_event":
[AdverseEvent] AE 
  with [Procedure] P
      such that AE.suspectEntity.instance.references(P) and P.status = 'completed' 
      and P.code ~  HC."Voluntary medical male circumcision VMMC"
      and P.performed after start of "Measurement Period"
      and P.performed before end of "Measurement Period"
      and AE.date <= (P.performed + 30 days)
      and AE.date >= (P.performed)
  where AE.actuality = 'actual'

define "VMMC_adverse_event_type":
    case 
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Abnormal pain") then  HC."Abnormal pain"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Anaesthesia-related effects") then  HC."Anaesthesia-related effects"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Damage to the penis") then  HC."Damage to the penis"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Difficulty urinating") then  HC."Difficulty urinating"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Excessive bleeding") then  HC."Excessive bleeding"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Excessive skin removal") then  HC."Excessive skin removal"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Excessive swelling") then  HC."Excessive swelling"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Haematoma") then  HC."Haematoma"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Infection") then  HC."Infection"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Injury to glans") then  HC."Injury to glans"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Scar or disfigurement") then  HC."Scar or disfigurement"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Sharps injury to personnel") then  HC."Sharps injury to personnel"
        when exists("VMMC_adverse_event" AE where AE.event ~ HC."Wound disruption") then  HC."Wound disruption"
        else HC."Other - HIV.B.DE222"
    end

define "VMMC_adverse_event_Intraoperative":
[AdverseEvent] AE 
  with [Procedure] P
      such that AE.suspectEntity.instance.references(P) and P.status = 'completed' 
      and P.code ~  HC."Voluntary medical male circumcision VMMC"
      and P.performed after start of "Measurement Period"
      and P.performed before end of "Measurement Period"
      and AE.date = P.performed
  where AE.actuality = 'actual'

  define "VMMC_adverse_event_Postoperative":
[AdverseEvent] AE 
  with [Procedure] P
      such that AE.suspectEntity.instance.references(P) and P.status = 'completed' 
      and P.code ~  HC."Voluntary medical male circumcision VMMC"
      and P.performed after start of "Measurement Period"
      and P.performed before end of "Measurement Period"
      and AE.date <= (P.performed + 30 days)
      and AE.date > (P.performed)
  where AE.actuality = 'actual'

  define "VMMC_adverse_event_timing":
    case 
        when exists(VMMC_adverse_event_Intraoperative) then  HC."Intraoperative"
        when exists(VMMC_adverse_event_Postoperative) then  HC."Postoperative"
        else null
    end