# Instructions for using this repo.

### <ins>Using Credentails for Powershell Env Variables</ins> 
$env:ARM_CLIENT_ID='ac579d2f-1492-45b8-923c-fcb5346c4138' \
$env:ARM_SUBSCRIPTION_ID='298f2c19-014b-4195-b821-e3d8fc25c2a8' \
$env:ARM_TENANT_ID='2b387c91-acd6-4c88-a6aa-c92a96cab8b1' \
$env:ARM_CLIENT_SECRET='XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' 

### <ins>Using Credentails for Linix Env Variables</ins> 
export ARM_CLIENT_ID='ac579d2f-1492-45b8-923c-fcb5346c4138' \
export ARM_SUBSCRIPTION_ID='298f2c19-014b-4195-b821-e3d8fc25c2a8' \
export ARM_TENANT_ID='2b387c91-acd6-4c88-a6aa-c92a96cab8b1' \
export ARM_CLIENT_SECRET='XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' 

### <ins>Packages Needed</ins> 
1. Terraform
2. git
3. az cli
4. unzip

### <ins>Command Usage</ins> 
git add . \
git commit -m "Commit Mesg" \
git push origin <branch_name> \
<br>
terraform init \
terraform fmt \
terraform validate \
terraform plan \
terraform apply \
terraform apply --auto-approve \
terraform destroy --auto-approve 