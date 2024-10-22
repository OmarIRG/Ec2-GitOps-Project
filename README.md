# EC2 GitOps Project

## Overview

The **EC2 GitOps Project** demonstrates the use of GitOps principles to automate and manage deployments on Amazon EC2 instances. By leveraging GitHub Actions workflows, this project facilitates a robust Continuous Integration and Continuous Deployment (CI/CD) pipeline, ensuring that application deployments are efficient, repeatable, and reliable.

## Features

- **Automated Deployments**: Automatically deploy applications to EC2 instances upon pushing code to the repository.
- **GitOps Practices**: Manage application states through Git, allowing for easy rollbacks and versioning.
- **Integration with Automated Pipeline**: Leverage advanced workflow capabilities from the [Automated Pipeline](https://github.com/CodeGlynd/Automated-Pipeline) project.
- **Environment Configuration**: Use environment variables and GitHub secrets to manage sensitive data securely.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- An **AWS account** with access to the EC2 service.
- An **SSH key pair** for accessing your EC2 instances.
- **Git** installed on your local machine.
- A **GitHub account**.

## Setup

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/OmarIRG/Ec2-GitOps-Project.git
   cd Ec2-GitOps-Project
