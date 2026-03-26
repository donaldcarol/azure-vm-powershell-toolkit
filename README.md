![GitHub last commit](https://img.shields.io/github/last-commit/donaldcarol/azure-vm-powershell-toolkit)
![GitHub repo size](https://img.shields.io/github/repo-size/donaldcarol/azure-vm-powershell-toolkit)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Azure](https://img.shields.io/badge/Azure-Identity-blue)
![CI](https://img.shields.io/badge/CI-GitHub%20Actions-success)
![Security](https://img.shields.io/badge/Security-OIDC%20Enabled-brightgreen)
![Powershell](https://img.shields.io/badge/Powershell-automation-red)

# Azure VM Automation Toolkit

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
