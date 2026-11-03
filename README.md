# AWS S3 Bucket Provisioning using Terraform & VS Code

A portfolio project demonstrating Infrastructure as Code (IaC) principles by automating the secure deployment of an Amazon S3 bucket on AWS using Terraform.

# Project Overview
This project provisions a secure Amazon S3 bucket using Terraform configuration files, managing resource lifecycles and enforcing best practices like bucket ownership controls.

# Tech Stack Used
* **Cloud Provider:** Amazon Web Services (AWS)
* **Infrastructure as Code (IaC):** HashiCorp Terraform
* **Code Editor:** Visual Studio Code (VS Code)
* **Version Control:** Git & GitHub

# Project File Structure
* providers.tf - Configures the AWS provider and required version constraints.
* main.tf - Defines the S3 bucket resource and bucket ownership security controls.
* variables.tf - Contains customizable input variables for the deployment.
* outputs.tf - Outputs key resource attributes (like the bucket name/ARN) after creation.

* <img width="1887" height="957" alt="Sidu awsproject 1" src="https://github.com/user-attachments/assets/bebb5ed5-7cdf-4b7f-8fc9-a9141c596642" />


  
# Troubleshooting & Lessons Learned
During the development of this project, I encountered and resolved a few common beginner challenges:
* *AWS CLI Naming Case Sensitivity:* Learned that AWS CLI commands are strictly lowercase (e.g., aws configure instead of Aws Configure).
* *S3 Bucket Naming Conventions:* Encountered an {InvalidBucketName} error because S3 bucket names cannot contain uppercase letters or underscores. Fixed this by strictly adhering to lowercase letters and hyphens.
* *Git Large File Exclusions:* Accidentally attempted to push the local .terraform provider binaries to GitHub. Resolved this by implementing a proper .gitignore file to keep the repository lightweight and secure.

# How to Run This Project Locally

1. *Clone the repository:*
 git clone https://github.com/knowledge25625/terraform-s3-project.git
