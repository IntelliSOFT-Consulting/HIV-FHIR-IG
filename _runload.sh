#!/usr/bin/env bash

# docker run -p 8080:8080 -e hapi.fhir.cr.enabled=true hapiproject/hapi:latest

export HEADER="Content-Type: application/fhir+json"
export FHIR="http://localhost:8080/fhir"

bash _refresh.sh

# bash _genonce.sh
java -Xmx4g -jar ./input-cache/publisher.jar publisher -ig .

# add patient examples

for FILE in input/test-transforms/*.json ; do curl -X POST -H "$HEADER" --data @${FILE} $FHIR | jq . ; done

pat=$(curl -s http://localhost:8080/fhir/Patient?_total=accurate | jq .total)
printf "Patients: ${pat}\n"

ms=$(curl -s http://localhost:8080/fhir/MedicationStatement?_total=accurate | jq .total)
printf "Medication Statements: ${ms}\n"

con=$(curl -s http://localhost:8080/fhir/Condition?_total=accurate | jq .total)
printf "Conditions: ${con}\n"

curl --show-error --write-out '%{http_code}' --output /dev/null -s -X PUT -H "$HEADER" --data @Library-FHIR-ModelInfo.json ${FHIR}/Library/FHIR-ModelInfo

