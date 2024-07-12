library Debug version '0.0.1' 

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


define "Debug Patient":
    Patient.id

define "Debug Condition":
    [Condition]

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
    // this is not accurate, should be 'active' or similar
    where MS.status = 'recorded'
    and exists(MS.reasonCode C where C ~ HC."On ART - HIV.H.DE47")


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
