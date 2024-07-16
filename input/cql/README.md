# Adaptation steps

* Separately clone the [I-TECH repo](https://github.com/I-TECH-UW/smart-hiv)
* Build it with sushi.
```
cd $HOME/src/github.com/I-TECH-UW/smart-hiv
sushi
```
* Copy over terminologies to this repo into input/vocabulary.
```
cp $HOME/src/github.com/I-TECH-UW/smart-hiv/fsh-generated/resources/CodeSystem-* $HOME/src/github.com/IntelliSOFT-Consulting/HIV-FHIR-IG/input/vocabulary/codesystem/external
cp $HOME/src/github.com/I-TECH-UW/smart-hiv/fsh-generated/resources/ValueSet-* $HOME/src/github.com/IntelliSOFT-Consulting/HIV-FHIR-IG/input/vocabulary/valueset/external
```
* Copy over libraries, measures.
```
cp $HOME/src/github.com/I-TECH-UW/smart-hiv/fsh-generated/resources/Library-* $HOME/src/github.com/IntelliSOFT-Consulting/HIV-FHIR-IG/input/resources/library
cp $HOME/src/github.com/I-TECH-UW/smart-hiv/fsh-generated/resources/Measure-* $HOME/src/github.com/IntelliSOFT-Consulting/HIV-FHIR-IG/input/resources/measure
```
* Copy over CQL. Remember to rename files if ones already exist with manual changes.
```
cp $HOME/src/github.com/I-TECH-UW/smart-hiv/input/cql/* $HOME/src/github.com/IntelliSOFT-Consulting/HIV-FHIR-IG/input/cql
```
* Modify maps to align with CQL starting with data elements, e.g. HIVCommon.cql. Do this alignment before undertaking alignment to the measures.
* This is temporarily done with the Debug.cql file.
* Add more test cases as needed for data elements.
* Build and test new test cases with [httpyac](https://httpyac.github.io/guide/installation_cli.html). The _transform.sh script runs the transforms and updates test cases that mapped first. 
* Test measures once data elements are working.





