#!/bin/bash

cmsDriver.py mc2017 -n -1 \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --conditions 106X_mc2017_realistic_v8 \
    --step NANO \
    --nThreads 1 \
    --era Run2_2017,run2_nanoAOD_106Xv1 \
    --customise PhysicsTools/NanoTuples/nanoTuples_cff.nanoTuples_customizeMC \
    --filein file:step-1.root \
    --fileout file:nano.root \
    --no_exec
