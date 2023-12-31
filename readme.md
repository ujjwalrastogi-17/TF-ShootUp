# Terraform Pipeline Setup Guide (On a Linux machine)

This guide provides step-by-step instructions to set up and run a Terraform pipeline which creates a Keypair,Security Group, VPC, Routing Tables, Internet Gateway, Subnets and EC2 instance in that vpc with the created security group and keypair. EC2 Instance used here is a t2.micro Ubuntu. After Configuring you will be able to provision this infrastructure in one go by just using **terraform apply** You'll need to have an active AWS account and a Linux machine to proceed.

## Prerequisites
- An AWS account
- IAM user credentials (access key ID and secret)

## Steps

### 1. Set Up AWS CLI
Ensure that AWS CLI is installed on your machine with the following commands:

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### 2. Install Terraform
You'll need to install Terraform to manage your infrastructure as code. Run the following commands:

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
sudo apt update
sudo apt-get install terraform
```

### 3. Configure AWS Credentials
Export your AWS credentials by replacing `YOUR_ACCESS_KEY_ID` and `YOUR_SECRET_ACCESS_KEY` with your actual AWS access key ID and secret:

```bash
export AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
```

### 4. Terraform Workflow
Navigate to the directory where your Terraform files are located and execute the following commands:

#### Initialize Terraform

```bash
terraform init
```

#### Plan the Deployment

```bash
terraform plan
```

#### Apply the Changes

```bash
terraform apply
```

### 5. Destroy Infrastructure (Optional)
If you wish to tear down the created infrastructure, run:

```bash
terraform destroy
```

## Conclusion
By following these steps, you should have successfully set up and run the Terraform pipeline on your Linux machine. Make sure to replace the placeholder values with your actual AWS credentials. Feel free to modify the Terraform files as per your specific requirements.
