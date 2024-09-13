#!/usr/bin/env bash

export HEADER="Content-Type: application/fhir+json"
export FHIR="http://localhost:8080/fhir"

curl -s -X PUT -H "$HEADER" --data @Library-FHIR-ModelInfo.json $FHIR/Library/FHIR-ModelInfo | jq .

# post transaction bundle of PUT entries for conformance and cql/libary, measure
# curl -s -X POST -H "$HEADER" --data @output/Bundle-KEMRBundle.json $FHIR | jq .

# add patient examples
for FILE in input/test-transforms/*.json ; do curl -X POST -H "$HEADER" --data @${FILE} $FHIR | jq . ; done

# ready to go
# curl $FHIR'/Measure/KEMRTXCURR/$evaluate-measure?periodStart=2000-01-01&periodEnd=2023-12-31' | jq .

curl -s http://localhost:8080/fhir/Patient?_total=accurate | jq .total

curl -s http://localhost:8080/fhir/MedicationStatement?_total=accurate | jq .total

curl -s http://localhost:8080/fhir/Condition?_total=accurate | jq .total
