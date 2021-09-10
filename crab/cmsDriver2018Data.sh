#!/bin/bash

cmsDriver.py data2018abc -n -1 \
    --data \
    --eventcontent NANOAOD \
    --datatier NANOAOD \
    --conditions 106X_dataRun2_v32 \
    --step NANO \
    --nThreads 1 \
    --era Run2_2018,run2_nanoAOD_106Xv1 \
    --customise PhysicsTools/NanoTuples/nanoTuples_cff.nanoTuples_customizeData \
    --filein file:step-1.root \
    --fileout file:nano.root \
    --no_exec
