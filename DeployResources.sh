#! /bin/bash

TF_PLAN=apply_plan
RG_NAME=rg-az-tftest

az group create -n $RG_NAME --location centralus

pushd tf-module
terraform init 
terraform plan -out $TF_PLAN
terraform apply $TF_PLAN

popd