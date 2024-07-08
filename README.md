# Creating VPCs and Subnets with Terraform and IaC

## What we will create:

1. A VPC with CIDR block 172.16.0.0/20
2. One public subnet with CIDR block 172.16.0.0/24
3. One private subnet with a CIDR block of 172.16.1.0/24
4. One Internet Gateway
5. One public route table with a route to the Internet Gateway, and the correct association between the public subnet and the public route table.

## Important Information

Don't forget to put your AWS credentials in a `.env` file and add the `.env` file to the `.gitignore` list.

## Instructions

### Prerequisites

Before you begin, make sure you have:

- AWS credentials configured in a `.env` file (which should be added to `.gitignore`).
- Terraform installed on your local machine. You can [install Terraform here](https://learn.hashicorp.com/tutorials/terraform/install-cli).

### Steps to Deploy

1. **Clone the Repository**

   ```bash
   git clone https://github.com/arditxharri/Create-VPCs-and-Subnets-with-Terraform-and-IaC.git
   cd Create-VPCs-and-Subnets-with-Terraform-and-IaC
   ```

2. **Initialize Terraform**

   Initialize Terraform in the project directory:

   ```bash
   terraform init
   ```

3. **Review and Edit Terraform Configuration**

   - Open `main.tf` in your preferred text editor to review and possibly customize the Terraform configuration for your specific requirements.

4. **Apply the Terraform Configuration**

   Apply the Terraform configuration to create the VPC, subnets, Internet Gateway, and route table:

   ```bash
   terraform apply
   ```

   Follow the prompts to confirm the changes Terraform will make to your AWS environment.

5. **Verify Resources**

   After Terraform has finished applying the configuration, verify in the AWS Management Console or through AWS CLI that the VPC, subnets, Internet Gateway, and route table have been created correctly.

6. **Clean Up (Optional)**

   If you no longer need the created resources, you can destroy them with Terraform:

   ```bash
   terraform destroy
   ```

   **Note:** Be cautious with `terraform destroy` as it will delete all resources managed by Terraform in the current directory.

### Further Customization

You can further customize the Terraform configuration (`main.tf`) to add more subnets, security groups, or other AWS resources as per your project requirements.
```

This format organizes the information into clear sections, making it easy for users to understand the purpose, prerequisites, and steps required to deploy the infrastructure using Terraform and IaC. Adjust the URLs and commands as per your specific repository and needs.