/**
 * Library: HIV.IND.41 Logic
 * Ref No: VER.5
 * Short Name: ART coverage in breastfeeding mothers
 *
 * Definition: % of HIV-exposed breastfeeding infants whose mothers are receiving ART at 12 (and 24 months) postpartum
 *
 * Numerator: Number of HIV-exposed breastfeeding infants whose mothers are receiving ART at 12 months (and 24 months*) postpartum
 * Numerator Calculation: COUNT of infants who are an "HIV-exposed infant or child" AND whose mothers are "Breastfeeding" 12 months after "Delivery date" AND mothers with "On ART"=True 12 months after "Delivery date" |  | Also reported for 24 months after "Delivery date"
 * Numerator Exclusions: 
 *
 * Denominator: Number of HIV-exposed infants attending MNCH services for a 12-month visit (and 24-month visit or first visit after the end of breastfeeding)
 * Denominator Calculation: COUNT of infants who are an "HIV-exposed infant or child" AND [(whose mothers attend a 12-month "Maternal and child health service visit") OR (first "Maternal and child health service visit" after "Delivery date" where mother is NOT "Breastfeeding")] |  | Also reported for mothers attending 24-month "Maternal and child health service visit"
 * Denominator Exclusions: 
 *
 * Disaggregations:
 * • Age (<15, 15–19, 20–24, 25+ years) 
 *  • Timing of ART initiation (already on ART at first ANC visit, newly on ART during pregnancy or labour and delivery) 
 *  • Cities and other administrative regions of epidemiologic importance
 *
 * Disaggregation Elements: Age | Timing of ART initiation | Breastfeeding at 24 months
 *
 * Numerator and Denominator Elements:
 * Breastfeeding 
 *  Delivery date 
 *  HIV-exposed infant or child 
 *  Maternal and child health service visit 
 *  On ART
 *
 * Reference: Consolidated guidelines on person-centred HIV strategic information: strengthening routine data for impact. Geneva: World Health Organization; 2022
 * 
 * Data Concepts:
 * HIV.A.DE17: Age | Calculated age (number of years) of the client based on date of birth
 * HIV.B.DE32: Breastfeeding | Infant is being breastfed by mother
 * HIV.D.DE32: Breastfeeding | Client is giving infant breast milk
 * HIV.D.DE38: On ART | Client is currently taking ART
 * HIV.E.DE41: Timing of ART initiation | When the pregnant woman or mother initiated ART, for women living with HIV.
 * HIV.E.DE42: Already on ART at first antenatal care visit | The pregnant woman was already on antiretroviral therapy (ART) at first antenatal care visit
 * HIV.E.DE43: Newly on ART during pregnancy | The pregnant woman started ART during her pregnancy
 * HIV.E.DE44: Newly on ART during labour and delivery | The woman started ART during labour and delivery
 * HIV.E.DE46: Delivery date | Date on which the woman delivered
 * HIV.E.DE112: HIV-exposed infant or child | Whether the infant or child was determined to have had HIV exposure
 * HIV.E.DE173: Maternal and child health service visit | Maternal and child health service visit attended by an HIV-exposed infant
 * HIV.E.DE174: 12-month visit | HIV-exposed infant attending MCH services for a 12-month visit
 * HIV.E.DE175: 24-month visit | HIV-exposed infants attending MCH services for a 24-month visit
 * HIV.E.DE176: First visit after the end of breastfeeding | HIV-exposed infant attending MCH services for a first visit after the end of breastfeeding
 * HIV.H.DE47: On ART | Client is currently taking ART 
 * HIV.SRV.DE20: HIV-exposed infant or child | Whether the infant or child was determined to have had HIV exposure
 *
 * Additional Context
 * - what it measures: This indicator measures the programme's ability to reduce the risk of transmission via breastfeeding (Prong 3 of the PMTCT strategy).
 * - rationale: • In many countries the average breastfeeding period is 18–24 months. The long breastfeeding period represents an important risk period for HIV-exposed infants. | • Ensuring that HIV-positive mothers are retained on ART, especially during the breastfeeding period, is critical to sustaining the health of the mother and preventing infection of her infant.
 * - method: For the numerator: Programme records (for example, PMTCT registers, ART registers). |  | For the denominator: Programme records (for example, MCH service records)
 * 
 * Suggested Scoring Method: proportion | http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
 */

library HIVIND41Logic

// Included Libraries
using FHIR version '4.0.1'

include HIVCommon version '0.0.1' called HIC
include FHIRHelpers version '4.0.1'
include FHIRCommon called FC
include WHOCommon called WCom

// Indicator Definition
parameter "Measurement Period" Interval<Date> default Interval[@2023-01-01, @2023-01-30]

context Patient
/* Populations */

/*
 *Initial Population
 */

define "Initial Population":
  true

/**
 * Numerator
 * 
 * Definition: Number of HIV-exposed breastfeeding infants whose mothers are receiving ART at 12 months (and 24 months*) postpartum
 * Calculation: COUNT of infants who are an "HIV-exposed infant or child" AND whose mothers are "Breastfeeding" 12 months after "Delivery date" AND mothers with "On ART"=True 12 months after "Delivery date" |  | Also reported for 24 months after "Delivery date"
 */

define "Numerator":
  true


/**
 * Denominator
 *
 * Definition: Number of HIV-exposed infants attending MNCH services for a 12-month visit (and 24-month visit or first visit after the end of breastfeeding)
 * Calculation: COUNT of infants who are an "HIV-exposed infant or child" AND [(whose mothers attend a 12-month "Maternal and child health service visit") OR (first "Maternal and child health service visit" after "Delivery date" where mother is NOT "Breastfeeding")] |  | Also reported for mothers attending 24-month "Maternal and child health service visit"
 */

define "Denominator":
  true
    

/* end Populations */

