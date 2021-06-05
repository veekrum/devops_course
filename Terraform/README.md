## Terraform
    - Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. 
    - Terraform codifies cloud APIs into declarative configuration files.
    
## Three Things
    - Write
    - Plan
    - Apply

    - Write
        - Write infrastructure as code using declarative configuration files. HashiCorp Configuration Language (HCL)
         allows for concise descriptions of resources using blocks, arguments, and expressions.
    - Plan  
        - Run terraform plan to check whether the execution plan for a configuration matches your expectations before provisioning or changing infrastructure.
    - Apply 
        - Apply changes to hundreds of cloud providers with terraform apply to reach the desired state of the 
          configuration.

## Why Terraform
    - Codify your infrastructure
        - Reduce human error and increase automation by provisioning infrastructure as code.
    - Manage infrastructure across clouds
        - Provision infrastructure across 300+ public clouds and services using a single workflow.
    - Create reproducible infrastructure
        - we may have multiple environments like, staging,staging2, uat, production. With terraform just 
          reproduce the env in the less time.

    
## Installation
    - https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started


## commands
    - terraform init
    - terraform validate
    - terraform plan
    - terraform apply
    - terraform destroy

## terraform init
    - Terraform downloads the aws provider and installs it in a hidden subdirectory of your current working directory, named .terraform.The terraform init command prints out which version of the provider was installed. Terraform also creates a lock file named .terraform.lock.hcl which specifies the exact provider versions used, so that you can control when you want to update the providers used for your project.
    
## Terrform blocks
    - provider
    - resources
    - output
    - data