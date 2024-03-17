# Introduction

This terraform module creates (almost) all resources needed (vpc, igw, sg, ec2 etc.) for running a VM on AWS automatically.

The only manual step needed is to create a key pair on AWS and then provide the name of the key pair to the module.

Terraform registry link https://registry.terraform.io/modules/defilippomattia/zero-to-ec2

# How to use (example folder)

1. Create a key pair on AWS

2. Run the following commands:

```bash
cd example/
terraform init
terraform plan
terraform apply
```

# Improvements

- automate the creation of the key pair
- configurable AWS region
- configurable VPC parameters (cidr, subnets etc.)
