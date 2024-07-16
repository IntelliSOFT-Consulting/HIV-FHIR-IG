/**
 * Library: HIV.IND.96 Logic
 * Ref No: CCA.4
 * Short Name: Cervical cancer survival
 *
 * Definition: Crude probability of surviving 1 year after a diagnosis of cervical cancer
 *
 * Numerator: Number of women living with HIV still alive 12 months after receiving a diagnosis of invasive cervical cancer
 * Numerator Calculation: COUNT of women with "HIV status"='HIV-positive' AND "Cervical cancer diagnosis"='Invasive cervical cancer' for a "Date of diagnosis of cervical precancer lesions or invasive cervical cancer" in previous 12 month reporting period
 * Numerator Exclusions: "Date of death" less than 12 months after "Date of diagnosis of cervical precancer lesions or invasive cervical cancer" for "Cervical cancer diagnosis"='Invasive cervical cancer'
 *
 * Denominator: Number of women living with HIV who received a diagnosis of invasive cervical cancer within a 12-month cohort observation period
 * Denominator Calculation: COUNT of women with "HIV status"='HIV-positive' AND "Cervical cancer diagnosis"='Invasive cervical cancer' for a "Date of diagnosis of cervical precancer lesions or invasive cervical cancer" in previous 12 month reporting period
 * Denominator Exclusions: 
 *
 * Disaggregations:
 * • Age (15–19, 20–24, 25–29, 30–49, 50+ years) 
 *  • Cervical cancer stage at diagnosis (0, I, II, III, IV) 
 *  • Cities and other administrative areas of epidemiologic importance
 *
 * Disaggregation Elements: Age | Cervical cancer stage at diagnosis
 *
 * Numerator and Denominator Elements:
 * Cervical cancer diagnosis 
 *  Date of diagnosis of cervical precancer lesions or invasive cervical cancer 
 *  HIV status
 *
 * Reference: Consolidated guidelines on person-centred HIV strategic information: strengthening routine data for impact. Geneva: World Health Organization; 2022
 * 
 * Data Concepts:
 * HIV.A.DE17: Age | Calculated age (number of years) of the client based on date of birth
 * HIV.B.DE115: HIV status | HIV status reported after applying the national HIV testing algorithm. No single HIV test can provide an HIV-positive diagnosis.
 * HIV.B.DE116: HIV-positive | Client is HIV-positive
 * HIV.B.DE117: HIV-negative | Client is HIV-negative
 * HIV.B.DE118: Unknown | Client has unknown HIV status
 * HIV.D.DE705: Date of diagnosis of cervical precancer lesions or invasive cervical cancer | Date of diagnosis of cervical precancer lesions or invasive cervical cancer
 * HIV.D.DE709: Cervical cancer diagnosis | Type of cervical cancer diagnosis
 * HIV.D.DE710: Cervical precancer lesions | Client is diagnosed with cervical precancer lesions
 * HIV.D.DE711: Invasive cervical cancer | Client is diagnosed with invasive cervical cancer disease
 * HIV.D.DE712: Cervical cancer stage at diagnosis | Cervical cancer stage at diagnosis of cervical cancer
 * HIV.D.DE713: Stage 0 | Stage 0 cervical cancer at diagnosis of cervical cancer
 * HIV.D.DE714: Stage I | Stage I cervical cancer at diagnosis of cervical cancer
 * HIV.D.DE715: Stage II | Stage II cervical cancer at diagnosis of cervical cancer
 * HIV.D.DE716: Stage III | Stage III cervical cancer at diagnosis of cervical cancer
 * HIV.D.DE717: Stage IV | Stage IV cervical cancer at diagnosis of cervical cancer
 *
 * Additional Context
 * - what it measures: This indicator measures the effectiveness of cervical cancer treatment for women diagnosed with cervical cancer.
 * - rationale: • Surveillance of cervical cancer survival among women living with HIV is essential in monitoring the access and effectiveness of treatment and follow-up to support the needs of cancer survivors. Adequate and complete follow-up is a prerequisite to conducting a survival study. | • It is calculated by assessing the percentage of women living with HIV who were diagnosed with invasive cervical cancer who were still alive 12 months after their cervical cancer diagnosis. It excludes those who were not followed for the 12-month period. In places with good retention and follow-up, 5-year survival can also be calculated, including only those individuals under observation with complete follow-up five years after their diagnosis of cervical cancer.
 * - method: This indicator uses a cohort analysis to measure the proportion of women living with HIV who are still alive 12 months after their diagnosis with cervical cancer. |  | The source of data is Individual-level data obtained from programme records.
 * 
 * Suggested Scoring Method: proportion | http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
 */

library HIVIND96Logic

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
 * Definition: Number of women living with HIV still alive 12 months after receiving a diagnosis of invasive cervical cancer
 * Calculation: COUNT of women with "HIV status"='HIV-positive' AND "Cervical cancer diagnosis"='Invasive cervical cancer' for a "Date of diagnosis of cervical precancer lesions or invasive cervical cancer" in previous 12 month reporting period
 */

define "Numerator":
  true

/**
 * Numerator Exclusions
 *
 * Calculation: "Date of death" less than 12 months after "Date of diagnosis of cervical precancer lesions or invasive cervical cancer" for "Cervical cancer diagnosis"='Invasive cervical cancer'
 */
    
define "Numerator Exclusions":
  false

/**
 * Denominator
 *
 * Definition: Number of women living with HIV who received a diagnosis of invasive cervical cancer within a 12-month cohort observation period
 * Calculation: COUNT of women with "HIV status"='HIV-positive' AND "Cervical cancer diagnosis"='Invasive cervical cancer' for a "Date of diagnosis of cervical precancer lesions or invasive cervical cancer" in previous 12 month reporting period
 */

define "Denominator":
  true
    

/* end Populations */

