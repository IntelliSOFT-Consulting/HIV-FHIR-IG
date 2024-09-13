#!/usr/bin/env bash

# docker run -p 8080:8080 -e hapi.fhir.cr.enabled=true hapiproject/hapi:latest

export HEADER="Content-Type: application/fhir+json"
export FHIR="http://localhost:8080/fhir"

curl -s -X PUT -H "$HEADER" --data @Library-FHIR-ModelInfo.json $FHIR/Library/FHIR-ModelInfo | jq .

# add patient examples
for FILE in input/test-transforms/*.json ; do curl -X POST -H "$HEADER" --data @${FILE} $FHIR | jq . ; done

curl -s http://localhost:8080/fhir/Patient?_total=accurate | jq .total

curl -s http://localhost:8080/fhir/MedicationStatement?_total=accurate | jq .total

curl -s http://localhost:8080/fhir/Condition?_total=accurate | jq .total
