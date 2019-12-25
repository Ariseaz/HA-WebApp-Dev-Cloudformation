# HA-WebApp-Dev-Cloudformation
Cloud Formation Scripts to deploy HA WebApp

Installation Procedure

The first step is to layout the network; network diagram is provided in the infra-diagram folder for reference

# Infrastructure / Network Deployment Script; should be deployed first
infra.yml

# Infrastructure parameters for infra.yml
infra-params.json

Deployment Instruction follows:

./create.bat infra infra.yml infra-params.json

# create.bat is the batch script for the deployment of this deployment script
# 'infra' ....is the stackname quoted

To Update the deployment script; run the script below:

Deployment Instruction follows:

./update.bat infra infra.yml infra-params.json


The Second Stage

# We deploy the SErvers and Loadbalancers with Reference to the output in the 'infra' instance
# RUN:

./create.bat servers servers.yml servers-params.json


The Third Stage

# This stage is to include the Bastion Host in the Public Subnet for Remote Access into our network

./create.bat bastion bastion.yml bastion-params.json
# To update the stack
./update.bat bastion bastion.yml bastion-params.json

Final Stage
# To Destroy the whole infastructure
Enter:

./destroy bastion           # delete bastion host
./destroy servers           # delete servers and loadbalancers
./destroy infra           # delete network infrastructure