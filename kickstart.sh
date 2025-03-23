#!/bin/bash

figlet G2-KickStart

echo "Terraform Install"

cd Terraform/

sh scripts/terra.sh

rm -rf scripts

rm -rf start-up

cd worker

# Run keygen and create file called "petClinic"
ssh-keygen -f /home/ubuntu/.ssh/petClinic -N "" -C "ubuntu"

echo "Please enter AWS Keys..."

aws configure

terraform init

terraform apply