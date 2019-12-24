aws cloudformation update-stack \
--stack-name $1 \
--template-body file://bastion.yml \
--parameters file://bastion-params.json \
--region=us-west-2