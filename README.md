Terraform + AWS + Docker
Here is a setup to run up docker image in AWS using the Terraform.a docker image will be created during startup. In the app-instances.tf you will find the configuration. by creating the aws instance we used the private key ( key pairs) that created by amazon. terraform will install docker on the aws server and will build the image.

Installation
you should have tarreaform and docker on your enviroment. 

SSH keys
Before to start, create ssh keys. Terraform will create key-pair in AWS, based on these keys. See how to create ssh keys Create a pem file with private ssh key you generated. Terraform will need to the pem file to connect to instances for provisioning.


terraform plan
This command will show either syntax errors or list of resources will be created. After you can run:

terraform apply
This command will build and run all resources in the *.tf files. If you run this command many times, Terraform will destroy previous instances before creating new ones. That is it. 

If you want to terminate instances and destroy the configuration you may call:

terraform destroy