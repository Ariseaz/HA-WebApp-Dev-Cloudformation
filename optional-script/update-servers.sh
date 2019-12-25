aws cloudformation update-stack \
--stack-name $1 \
--template-body file:../servers.yml \
--parameters file:../servers-params.json \
--region=us-west-2 \
--capabilities CAPABILITY_NAMED_IAM