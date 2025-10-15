This project demonstrates how to use Terraform to provision an automated, production-grade 3-tier web application architecture on AWS.

It showcases real-world cloud engineering principles — modular design, environment isolation, and secure, scalable automation — while remaining safe to display on GitHub without incurring costs.

🏗️ **Architecture Overview**


Below is a visual representation of the deployed architecture:

                             ┌──────────────────────────────┐
                             │        Internet Users        │
                             └──────────────┬───────────────┘
                                            │
                                            ▼
                             ┌──────────────────────────────┐
                             │   Application Load Balancer  │
                             └──────────────┬───────────────┘
                                            │
              ┌───────────────────────────┴──────────────────────────┐
              │                            │                         │
              ▼                            ▼                         ▼
    ┌────────────────────┐     ┌────────────────────┐     ┌────────────────────┐
    │  EC2 Instance 1    │     │  EC2 Instance 2    │     │ Auto Scaling EC2   │
    │   (App Tier - Web) │     │   (App Tier - Web) │     │  (App Tier - Web)  │
    └─────────┬──────────┘     └─────────┬──────────┘     └─────────┬──────────┘
              │                        │                        │
              ▼                        ▼                        ▼
    ┌────────────────────────────────────────────────────────────────┐
    │ Private Subnets (App + DB Tier, No Internet Access)            │
    └──────────────────────┬─────────────────────────────────────────┘
                           │
                           ▼
                 ┌──────────────────────────────┐
                 │       RDS Database           │
                 │ (MySQL/PostgreSQL - Secure)  │
                 └──────────────────────────────┘


🧩 **Features**
  
Fully automated AWS 3-tier infrastructure

Reusable Terraform modules for VPC, Compute, and Database layers

Environment isolation using Terraform Workspaces (dev, staging, prod)

Configurable via .tfvars files — no hard-coding

Follows AWS best practices for networking and security

Cost-control friendly: safe to showcase as code only


🗂️ **Project Structure**  

3-tier-terraform/  
│  
├── alb.tf               # Application Load Balancer config  
├── ec2.tf               # EC2 instances setup  
├── main.tf              # Main Terraform config  
├── outputs.tf           # Outputs from Terraform deployment  
├── rds.tf               # RDS instance config  
├── security-groups.tf   # Security groups definitions  
├── user-data.sh         # EC2 user data script  
├── variables.tf         # Input variables  
├── vpc.tf               # VPC and networking setup  
├── .gitignore           # Git ignore file  
└── .terraform.lock.hcl  # Terraform lock file  
└── README.md  
    

  
⚡ **How to Run**


💰 Note: Running this will create AWS resources and may incur small costs.


1️⃣ Initialize Terraform
```terraform init```

2️⃣ Create/Select a Workspace
```terraform workspace new dev```
```terraform workspace select dev```

3️⃣ Preview Infrastructure
```terraform plan -var-file="dev.tfvars"```

4️⃣ Apply Changes (Optional)
```terraform apply -var-file="dev.tfvars"```

5️⃣ Destroy Resources
```terraform destroy -var-file="dev.tfvars"```

🧠 **Key Concepts Demonstrated**

Infrastructure as Code (IaC) with Terraform

Modular and reusable architecture

VPC networking and security design

Auto Scaling and Load Balancing

RDS deployment in private subnets

Terraform variables, outputs, and workspaces

Secure, scalable, cloud-native patterns

📸 **Optional Enhancements**

If you deploy the project:

Add screenshots of the AWS console

Include Cloud Architecture Diagram using Draw.io or Lucidchart

Integrate with a CI/CD pipeline (GitHub Actions, Jenkins, or Terraform Cloud)

**🧾 License**

MIT License — free to use and modify for learning and portfolio purposes.

**👤 Author**

Alex King — Cloud Engineer
