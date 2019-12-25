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

# update.bat is the batch script to updae the deployment stack 'infra'
# 'infra' ....is the stackname quoted


# Server Deployment to be provissioned by the servers script
servers.yml

# Server deployment scrip parameter file
servers-params.json


