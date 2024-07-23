# Steps to Adapt a SMART L3 for StructureMap-based Transforms

## Prepare

> **_NOTE:_** In these commands, remember to change paths to where your source and target IGs live.

* Clone/create the target IG.
* Clone the source IG.

* Go to the source IG directory.
* Build the source IG with sushi. This is necessary for producing the existing FHIR resources if the source authors used FSH.
```bash
git clone github.com/WorldHealthOrganization/smart-hiv
cd $HOME/src/github.com/WorldHealthOrganization/smart-hiv
sushi
```

## Copy over the artifacts

These commands do the following:
* Copy over terminologies to this repo into input/vocabulary.
* Copy over libraries, measures.
* Copy over CQL. Remember to rename files if ones already exist with manual changes.

```bash
SRC="$HOME/src/github.com/WorldHealthOrganization/smart-hiv"
TGT="$HOME/src/github.com/IntelliSOFT-Consulting/HIV-FHIR-IG"
cp ${SRC}/fsh-generated/resources/CodeSystem-* ${TGT}/input/vocabulary/codesystem/external
cp ${SRC}/fsh-generated/resources/ValueSet-* ${TGT}/input/vocabulary/valueset/external
cp ${SRC}/fsh-generated/resources/Library-* ${TGT}/input/resources/library
cp ${SRC}/fsh-generated/resources/Measure-* ${TGT}/input/resources/measure
cp ${SRC}/input/cql/* ${TGT}/input/cql
```


## Next steps

* Modify maps to align with CQL starting with data elements, e.g. HIVCommon.cql. Do this alignment before undertaking alignment to the measures.
* This is temporarily done with the Debug.cql file.
* Add more test cases as needed for data elements.
* Build and test new test cases with [httpyac](https://httpyac.github.io/guide/installation_cli.html). The _transform.sh script runs the transforms and updates test cases that mapped first. 
* Test measures once data elements are working.


## Reference: PEPFAR and WHO indicators

TX_CURR: IND27 confirmed
* Treatment: Number of adults and children currently receiving antiretroviral therapy (ART)

TX_NEW: IND30 confirmed
* Treatment:	Number of adults and children newly enrolled on antiretroviral therapy (ART)

TX_ML: IND28 looks correct
* Treatment: Number of ART patients (who were on ART at the beginning of the quarterly reporting period or initiated treatment during the reporting period) and then had no clinical contact since their last expected contact	


HTS_TST: IND18 confirmed
* Testing: Number of individuals who received HIV Testing Services (HTS) and received their test results	