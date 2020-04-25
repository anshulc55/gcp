#!/bin/bash

gsutil mb -c standard -l us-east1 gs://${DEVSHELL_PROJECT_ID}-earthquake-data

gsutil iam ch allUsers:objectViewer gs://${DEVSHELL_PROJECT_ID}-earthquake-data

gsutil cp earthquakes.* gs://${DEVSHELL_PROJECT_ID}-earthquake-data
