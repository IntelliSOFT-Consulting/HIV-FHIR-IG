library Debug

using FHIR version '4.0.1'

//include fhir.cqf.common.FHIRCommon called FC
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include HIVConcepts called Concepts
include HIVConceptsCustom called ConceptsCustom
include HIVElements called Elements
include HIVCommon version '0.0.1' called Common
include HIVConfig called Config

parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2024-12-30]

context Patient

/**
 * HIV Elements
 */

/* General Data Elements */

// HIV Testing
// define "Elevated Viral load test during Measurement Period":
//   "Viral load test result D.DE387" VL
//     with Elements."viral load sample collection" P 
//     such that VL.partOf.references(P) and P.performed.toInterval() during "Measurement Period"
//     where VL.value > 1000 
//     sort by start of effective.toInterval()


define "Negative Tests within Measurement Period":
  Elements."HIV-negative test result" O
    // with Elements."At elevated risk for HIV acquisition B.DE225" HIV
    // such that O.hasMember.references(HIV)
    where O.effective.toInterval() starts during "Measurement Period"
    sort by start of effective.toInterval()

define "First Negative Test within Measurement Period":
  (First("Negative Tests within Measurement Period"))

define "Negative Tests after First Negative Test":
  Elements."HIV-negative test result" O
    // with Elements."At elevated risk for HIV acquisition B.DE225" HIV
    //   such that O.hasMember.references(HIV)
    where  O.effective.toInterval() starts after start of "First Negative Test within Measurement Period".effective.toInterval()
      and O.effective.toInterval() starts before (start of "First Negative Test within Measurement Period".effective.toInterval() + Config."Testing Interval")
    sort by start of effective.toInterval()

define "Lost to Follow Up during the measurement period":
  exists(Elements."On ART H.DE47" H
   where H.effective starts before end of "Measurement Period"
    and H.effective ends after start of "Measurement Period"
	  and not (H.effective ends after (end of "Measurement Period" - Config."LTFU Days"))
   )

// HIV Status

// ART Status

define "ART Medication Statement":
  Elements."ART Medication Statement" MS
  where MS.effective.toInterval() overlaps "Measurement Period"
  sort by start of effective.toInterval()

define "On ART":
  exists "ART Medication Statement"

define "ART Start Date":
  "ART Medication Statement" MS
  return start of MS.effective.toInterval()

define "ART Duration in Months":
  "ART Medication Statement" MS
  return duration in months of MS.effective.toInterval()

define "By ART initiation":
  case
    when Sum("ART Duration in Months") < 12 then '<12 months on ART'
    when Sum("ART Duration in Months") >= 12 then '12+ months on ART'
    else 'Unknown'
  end

// Geographic Region
define "By Geographic Region Stratifier":
    First(Patient.address A where A.use in { 'home' }).state

// Auto-generated Elements from DAK Data Dictionary
//   Entries based on DAK Data Dictionary for Data Elements marked as used
//   in at least one Decision Support Table or Aggregate Indicator

/*
@dataElement: HIV.A.DE3 - Visit date
@activity: HIV.A2 Gather client details
@description: The date and time of the client's visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Visit date A.DE3":
  Elements."Visit date A.DE3" O
    where O.effective.toInterval() during "Measurement Period"
define "Visit date A.DE3 Value":
  "Visit date A.DE3" O
  return O.value
/* End of Visit date A.DE3 */

/*
@dataElement: HIV.A.DE17 - Age
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Calculated age (number of years) of the client based on date of birth
*/
define "Age In Years":
  AgeInYearsAt(start of "Measurement Period")

define "Age In Months":
  AgeInMonthsAt(start of "Measurement Period")

define "Age In Days":
  AgeInDaysAt(start of "Measurement Period")



/*
 * By Age Stratifiers
 * (0–4, 5–9, 10–14, 15–19, 20–24, 25–29, 30–34, 35–39, 40–44, 45–49, 50+ years)
 * 
 */
define "By Age Stratifier":
  case 
      when "Age In Years" <= 4 then '0-4'
      when "Age In Years" <= 9 then '5-9'
      when "Age In Years" <= 14 then '10–14'
      when "Age In Years" <= 19 then '15–19'
      when "Age In Years" <= 24 then '20–24'
      when "Age In Years" <= 29 then '25–29'
      when "Age In Years" <= 34 then '30–34'
      when "Age In Years" <= 39 then '35–39'
      when "Age In Years" <= 44 then '40–44'
      when "Age In Years" <= 49 then '45–49'
      when "Age In Years" >= 50 then '50+'
      else null
  end
  
  /*
 * By Age Stratifiers
 * Age (0–4, 5–9, 10–14, 15–19, 20–24, 25–49, 50+ years)
 * 
 */
define "By Age Stratifier 2":
  case 
      when "Age In Years" <= 4 then '0-4'
      when "Age In Years" <= 9 then '5-9'
      when "Age In Years" <= 14 then '10–14'
      when "Age In Years" <= 19 then '15–19'
      when "Age In Years" <= 24 then '20–24'
      when "Age In Years" <= 49 then '25–49'
      when "Age In Years" >= 50 then '50+'
      else null
  end

define "By Age Stratifier 3":
  case 
      when "Age In Years" >= 15 and "Age In Years"<= 19 then '15-19'
      when "Age In Years" <= 24 then '20-24'
      when "Age In Years" <= 49 then '25–49'
      when "Age In Years" >= 50 then '50+'
      else null
  end

/* End of Age */






/*
@dataElement: HIV.A.DE18 - Gender
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Gender of the client
*/

/*
 * By Administrative Gender of Patient Stratifier
 * Need to expand codes
 */

define "By Administrative Gender Stratifier":
  case 
      when Patient.gender = 'male' then Concepts."Male"
      when Patient.gender = 'female' then Concepts."Female"
      when Patient.gender = 'transgender female' then Concepts."Transgender female"
      when Patient.gender = 'transgender male' then Concepts."Transgender male"
      else Concepts."Other - HIV.A.DE23"
  end
