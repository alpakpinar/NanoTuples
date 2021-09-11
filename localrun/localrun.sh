#!/bin/bash

# Launch local test run with the current customization

cmsDriver.py test_nanoTuples_mc2018 -n 100 \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --conditions 106X_upgrade2018_realistic_v15_L1v1 \
    --step NANO \
    --nThreads 1 \
    --era Run2_2018,run2_nanoAOD_106Xv1 \
    --customise PhysicsTools/NanoTuples/nanoTuples_cff.nanoTuples_customizeMC \
    --filein /store/mc/RunIISummer19UL18MiniAOD/GluGluToBulkGravitonToHHTo4B_M-1000_narrow_WZHtag_TuneCP5_PSWeights_13TeV-madgraph-pythia8/MINIAODSIM/106X_upgrade2018_realistic_v11_L1v1-v1/20000/86AAB896-106A-4D4E-9657-DDB87FAFD1EE.root \
    --fileout file:nano_mc2018.root \
    --customise_commands "process.options.wantSummary = cms.untracked.bool(True)"
