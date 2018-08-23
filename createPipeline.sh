#!/bin/bash
CONCOURSE_TARGET=training-ci
PIPELINE=roster-pipeline
#PREREQ - be logged in
# fly login -t training-ci --insecure -c https://training-ci.aws.rscale.io -u luke -p goplatformgo -n luke
echo Creating pipeline \"$PIPELINE\" in concourse target \"$CONCOURSE_TARGET\" 
fly -t $CONCOURSE_TARGET set-pipeline -p $PIPELINE -c ../training-pipelines/application/pipeline.yml -l ./ci/config.yml
