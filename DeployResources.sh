#! /bin/bash

TF_PLAN=apply_plan

pushd tf-module
terraform init 
terraform plan -out $TF_PLAN
terraform apply $TF_PLAN

popd