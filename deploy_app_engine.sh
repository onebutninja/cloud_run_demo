#! /bin/bash

echo "The present working directory is `pwd`"


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


gcloud source repos clone cloud_run_demo
git fetch --all
git checkout -t origin/main

#gcloud app update
#gcloud app deploy .  --version default --project tech-and-intelligence-lab
#gcloud app deploy --project=tech-and-intelligence-lab
#gcloud app deploy app.yaml

#Cloud Run
gcloud builds submit --tag gcr.io/xyz-lab/cloud_run_demo
gcloud run deploy cloud_run_demo --image gcr.io/xyz-lab/cloud_run_demo --region europe-west2 --platform managed --allow-unauthenticated