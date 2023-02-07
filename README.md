#Task

1- Create the Custom VPC using Terraform - You can use module or resource block vpc

2- Add the firewall rules to allow traffic at port-80 at the above-created VPC

3- Create the EC2 instance in the AWS at inside the created VPC
 
4- Install the Nginx on the created instance

# Install terraform
```
sudo snap install terraform --classic
```

# Commands to run terraform
```
terraform init
terraform validate
terraform plan
terraform apply 
```

# If you want resources to be auto-approved.
```
terraform apply --auto-approve 
```
 
