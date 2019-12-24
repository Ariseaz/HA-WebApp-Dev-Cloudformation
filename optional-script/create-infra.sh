aws cloudformation create-stack \
--stack-name $1 \
--template-body file://infra.yml \
--parameters file://infra-params.json \
--region=us-west-2