# Wedding Announcement Website 

[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)](https://www.docker.com/)
[![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat&logo=github-actions&logoColor=white)](https://github.com/features/actions)

## Overview
This project deploys a  wedding announcement website to AWS using Infrastructure as Code (IaC) with Terraform. The application is containerized with Docker, stored in Amazon ECR, and runs on Amazon ECS across two Availability Zones (AZs) for high availability. An Application Load Balancer (ALB) distributes traffic, and CloudWatch provides monitoring. Deployments are automated via a GitHub Actions CI/CD pipeline that builds, pushes, and deploys updates on code changes.

## Architecture
The infrastructure is provisioned entirely with Terraform and includes:
- Amazon ECR repository for Docker images.
- Amazon ECS cluster with tasks running in two AZs.
- Application Load Balancer (ALB) for traffic routing.
- CloudWatch for logging and monitoring.

<img width="2103" height="1482" alt="aws_diagram-Page-2 drawio(8)" src="https://github.com/user-attachments/assets/b739db48-21d9-41d6-8dab-270eca8c785a" />

---

## Features
- **High Availability**: ECS tasks distributed across two AZs.
- **Automation**: GitHub Actions pipeline triggers on code changes to build/push Docker images to ECR and update ECS.
- **Monitoring**: Integrated CloudWatch for alerts and logs.
- **Scalability**: Easy to extend with ECS autoscaling.

---

## Technologies Used
- **IaC**: Terraform
- **Containerization**: Docker
- **Cloud Services**: AWS (ECS, ECR, ALB, CloudWatch)
- **CI/CD**: GitHub Actions

---

## Provisioned the Infra with Terraform
<img width="1301" height="191" alt="image" src="https://github.com/user-attachments/assets/d170bd8e-bf72-4860-a9d6-28f5aec7ff60" />

## Built, taged and pushed the Docker image 
<img width="1301" height="224" alt="image" src="https://github.com/user-attachments/assets/435376c7-83df-49dd-9b6a-61b4f8dffc10" />
<img width="1367" height="189" alt="Screenshot from 2025-11-20 18-59-52" src="https://github.com/user-attachments/assets/115a7bc2-8937-4219-93ad-a7835c47ea30" />

---


## CI/CD Pipeline
The GitHub Actions workflow (in .github/workflows/deploy.yml) automates deployments:
- Triggers on pushes to main.
- Builds the Docker image.
- Pushes to ECR.
- Updates ECS tasks to pull the new image.

### Example: Changing the wedding date in src/index.html triggers the pipeline.
#### Original wedding date. Before Change:
<img width="1298" height="732" alt="11" src="https://github.com/user-attachments/assets/51397daf-170d-4b86-86d9-1dc6e6000af2" />

#### Successful Pipeline run:
<img width="1365" height="679" alt="image" src="https://github.com/user-attachments/assets/2943e1a1-adfd-442d-93ea-c05bc06d129e" />

#### Updated date. After Change:
<img width="1301" height="694" alt="Untitled Diagram drawio(8)" src="https://github.com/user-attachments/assets/f6db3855-b4d0-4969-a549-4f4baae27ddf" />





