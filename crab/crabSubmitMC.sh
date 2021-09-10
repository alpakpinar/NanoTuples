#!/bin/bash

OUTPATH="/eos/uscms/store/user/aakpinar/customnanov8"

# Path to CMSSW configuration file
CONFIGFILE=${1}
if [ ! -f ${CONFIGFILE} ]; then
    echo "File ${CONFIGFILE} does not exist, please check."
    exit 1 
fi  

# WORKAREA=${2}

# Go ahead with the CRAB submission
python crab.py -p ${CONFIGFILE} \
    -o ${OUTPATH} \
    -t NanoTuples-test \
    -i mc.txt \
    --num-cores 1 \
    --send-external \
    -s FileBased \
    -n 2 \
    --work-area crab_projects_mc \
    # --dryrun \
    # --site T2_CH_CERN \