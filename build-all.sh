#!/bin/bash

cd jhipster-msa-uaa && ./mvnw clean package -Pprod verify jib:dockerBuild &
cd jhipster-msa-sample-microservice && ./mvnw clean package -Pprod verify jib:dockerBuild &
cd jhipster-msa-gateway && ./mvnw clean package -Pprod verify jib:dockerBuild &
wait;
echo "Done"