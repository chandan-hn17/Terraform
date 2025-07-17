# Terraform AWS Infrastructure Modules

This project consists of modular Terraform configurations to provision and manage AWS infrastructure with a focus on cost-effectiveness, security, and scalability.

## 1. VPC & Networking

  - Create custom VPCs with public and private subnets  
  - Configure route tables, Internet Gateway (IGW), and NAT Gateways  
  - Ensure secure communication between modules (e.g., ASG ↔ EC2)

## 2. Compute: EC2 Instances

  - Launch EC2 instances using appropriate AMIs and instance types  
  - Apply Security Groups and IAM Roles  
  - Attach EBS volumes and enable monitoring

## 3. Scalability: Auto Scaling Groups (ASG)

  - Define Launch Templates and configure ASG with health checks  
  - Integrate with CloudWatch metrics  
  - Use lifecycle hooks for graceful instance startup/shutdown

## 4. Elastic Load Balancing (ELB)

  - Provision Application Load Balancers (ALB)  
  - Route traffic to ASG/EC2 based on listeners and rules  
  - Configure health checks and target groups

## 5. IAM & Security

  - Create IAM roles, instance profiles, and policies  
  - Enforce **least-privilege** principle  
  - Enable secure access to AWS services (e.g., SSM)

## 6. CloudWatch Logging & Monitoring

- Set up custom metrics, alarms, and logs  
- Monitor EC2 health, CPU utilization, and disk space  
- Trigger alarms for auto scaling or alerting

## 7. S3

  - Use S3 for:
    - Terraform backend state (with DynamoDB for state locking)  
    - Logging or storing minimal artifacts

## 8. AWS Systems Manager (SSM)

  - Enable Session Manager for passwordless EC2 access (no SSH keys)  
  - Use patching and automation documents for maintenance tasks

## 9. CloudTrail & GuardDuty (Optional, Minimal Configuration)

  - Enable for governance and security auditing  
  - Configure short log retention to reduce costs
