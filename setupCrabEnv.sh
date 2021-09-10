#!/bin/bash

cd $CMSSW_BASE/src/PhysicsTools/NanoTuples/crab
# Set up grid proxy
echo "Setting up GRID proxy"
voms-proxy-init -rfc -voms cms --valid 168:00
# Set up CRAB env (must be done after cmsenv)
echo "Sourcing CRAB"
source /cvmfs/cms.cern.ch/common/crab-setup.sh