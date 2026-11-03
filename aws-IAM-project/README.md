# 🚀 Automated AWS IAM User and Policy Provisioning with Terraform

A production-ready Infrastructure as Code (IaC) project utilizing **Terraform** to provision a custom AWS IAM user (`sidu-aws-iam-lab`), attach a restricted S3 Read-Only custom IAM policy, and enforce secure version control practices.

---

## 🛠️ Tech Stack & Tools
* **Infrastructure as Code:** Terraform (v5.0+ AWS Provider)
* **Cloud Provider:** Amazon Web Services (AWS)
* **Version Control:** Git & GitHub
* **Environment:** Visual Studio Code, PowerShell

---

## 📂 Project Architecture & File Structure
```text
aws-IAM-project/
├── .gitignore          # Excludes local state files (.terraform/, *.tfstate)
├── main.tf             # Core resources (IAM User, Custom S3 Policy, Policy Attachment)
├── variable.tf         # Input variables (Region, IAM User Name)
├── output.tf           # Output values (IAM User ARN and Name)
└── provider.tf         # AWS Provider and version constraints