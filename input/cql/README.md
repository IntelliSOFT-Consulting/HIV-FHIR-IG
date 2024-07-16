# Adaptation steps

* Separately clone the [I-TECH repo](https://github.com/I-TECH-UW/smart-hiv)
* Build it with sushi.
* Copy over terminologies to this repo in input/vocabulary.
* Copy over libraries, measures.
* Modify maps to align with CQL starting with data elements, e.g. HIVCommon.cql. Do this alignment before undertaking alignment to the measures.
* Add more test cases as needed for data elements.
* Build and test new test cases with [httpyac](https://httpyac.github.io/guide/installation_cli.html). The _transform.sh script runs the transforms and updates test cases that mapped first. 
* Test measures once data elements are working.


