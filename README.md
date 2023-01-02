How to use aws-vpc-network module

Prerequisites:
1)	AWS CLI version 2.9 and above
2)	Terraform version 1.3 and above

Install aws cli on centos machine:

sudo yum install unzip -y

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

sudo ./aws/install

aws –version(verify the aws cli installation)

Configure AWS CLI:

aws configure

and provide the accessKeyID and secretAccessKey(the user must have vpc creation permissions.)

verify the aws-cli access, by running aws s3 ls (make sure you have s3fullaccess policy)


Install Terrafrom:

sudo yum install -y yum-utils

sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

sudo yum -y install terraform

terraform –version (verify the terraform installation)

Install Git:

sudo yum install git –y

mkdir vpc-network

cd vpc-network

git clone git@github.com:madops1221/aws-vpc-network.git

cd aws-vpc-network-git/modules/vpc

terraform init

terraform plan

terraform apply –auto-approve



