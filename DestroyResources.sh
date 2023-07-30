#! /bin/bash

TF_PLAN=destroy_plan

pushd tf-module
terraform init 
terraform plan -destroy -out $TF_PLAN
terraform apply $TF_PLAN

popd