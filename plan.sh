# TODO: Add bucket name that you have write access to
backend_bucket=""
backend_key="state/backend_config"
backend_region="us-east-1"

pushd resources
terraform init \
-backend-config="key=$backend_key" \
-backend-config="bucket=$backend_bucket" \
-backend-config="region=$backend_region"

terraform plan -var-file="../vars/variables.tfvars"
popd
