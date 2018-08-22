#!/bin/bash
CONCOURSE_TARGET=training-ci
PIPELINE=roster-pipeline
echo Creating pipeline \"$PIPELINE\" in concourse target \"$CONCOURSE_TARGET\" 
fly -t $CONCOURSE_TARGET set-pipeline -p $PIPELINE -c ../training-pipelines/application/pipeline.yml -l ./ci/config.yml
