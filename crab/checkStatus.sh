#!/bin/bash

./crab.py --status \
    --work-area crab_projects_mc \
    --options "maxjobruntime=2500 maxmemory=2500" \
    --options "maxjobruntime=2500 maxmemory=2500" \
    && ./crab.py --summary
