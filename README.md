# Azure VM Automation Toolkit

![Azure VM Toolkit](https://github.com/donaldcarol/azure-vm-powershell-toolkit/actions/workflows/azure-vm-toolkit.yml/badge.svg)
![PowerShell](https://img.shields.io/badge/PowerShell-7-blue)
![Azure](https://img.shields.io/badge/Azure-Cloud-blue)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-black)
![OIDC](https://img.shields.io/badge/Auth-OIDC-green)
![License](https://img.shields.io/badge/License-MIT-yellow)
![VM Automation](https://img.shields.io/badge/Feature-VM%20Automation-blue)
![Parallel Execution](https://img.shields.io/badge/Feature-Parallel-green)

PowerShell automation toolkit for Azure VM lifecycle management using GitHub Actions and OIDC authentication.

## Technologies:
- PowerShell 7
- Azure PowerShell (Az module)
- GitHub Actions- Azure RBAC
- OIDC federation
<img width="1001" height="861" alt="image" src="https://github.com/user-attachments/assets/214bf85c-ad66-47bf-9193-3a39dca1f75b" />

  

## Features

- Start, stop, status and snapshot operations for Azure VMs
- Support for single VM execution
- Support for `vmName=all` across multiple resource groups
- Tag-based VM operations
- Secure authentication with GitHub Actions OIDC
- Parallel execution for faster multi-VM management
