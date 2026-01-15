# Lab Project: Terraform + Ansible - Nginx Frontend with HTTPD Backends

## Student Information
- Name: Aimen Hafeez
- Roll Number: 2023-BSE-002

## Architecture Overview
This project implements a highly available web architecture with:
- 1 Nginx frontend (reverse proxy/load balancer)
- 3 Apache HTTPD backend servers
- 2 primary backends + 1 backup backend
- Fully automated provisioning and configuration

## Features
- Infrastructure as Code using Terraform
- Configuration Management using Ansible Roles
- High Availability with backup backend
- Automated deployment pipeline
- Idempotent operations

## Prerequisites
- AWS Account with CLI configured
- Terraform >= 1.0
- Ansible >= 2.9
- SSH key pair

## Quick Start
```bash
# Initialize Terraform
terraform init

# Deploy everything
terraform apply -auto-approve

# Get frontend URL
terraform output frontend_url
```

## Testing
See verification section in main documentation.

## Cleanup
```bash
terraform destroy -auto-approve
```

## Repository Structure
```
.
├── main.tf                      # Main Terraform configuration
├── variables.tf                 # Terraform variables
├── outputs.tf                   # Terraform outputs
├── locals.tf                    # Local values and data sources
├── inventory.tpl                # Ansible inventory template
├── ansible/
│   ├── ansible.cfg
│   ├── playbooks/
│   │   └── site.yaml           # Main playbook using roles
│   └── roles/
│       ├── backend/            # Backend HTTPD role
│       │   ├── tasks/main.yml
│       │   ├── handlers/main.yml
│       │   └── templates/backend_index.html.j2
│       └── frontend/           # Frontend Nginx role
│           ├── tasks/main.yml
│           ├── handlers/main.yml
│           └── templates/nginx_frontend.conf.j2
```

## Author
Aimen Hafeez
