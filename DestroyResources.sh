#! /bin/bash

TF_PLAN=destroy_plan
RG_NAME=rg-az-tftest

pushd tf-module
terraform init 
terraform plan -destroy -out $TF_PLAN
terraform apply $TF_PLAN

popd

az group delete -n $RG_NAME -y