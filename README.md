# Azure VM Automation Toolkit

![Azure VM Toolkit](https://github.com/donaldcarol/azure-vm-powershell-toolkit/actions/workflows/azure-vm-toolkit.yml/badge.svg)
![PowerShell](https://img.shields.io/badge/PowerShell-7-blue)
![Azure](https://img.shields.io/badge/Azure-Cloud-0078D4?logo=microsoftazure)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-black?logo=githubactions)
![OIDC](https://img.shields.io/badge/Auth-OIDC-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

## 📌 Overview

Azure VM Automation Toolkit is a PowerShell-based solution for managing Azure virtual machines using GitHub Actions.

The project demonstrates secure, modern cloud automation using:

* GitHub Actions workflows
* OIDC-based authentication (no secrets)
* Azure RBAC authorization
* PowerShell (Az module)
* Parallel execution for multi-VM operations

---

## 🚀 Features

* Start, stop, and check status of Azure VMs
* Create snapshots for virtual machines
* Execute actions on a single VM or **all VMs across multiple Resource Groups**
* Tag-based VM automation (e.g. AutoShutdown)
* Parallel execution for faster operations
* Secure authentication using GitHub OIDC (no credentials stored in repo)

---


<img width="1001" height="861" alt="image" src="https://github.com/user-attachments/assets/214bf85c-ad66-47bf-9193-3a39dca1f75b" />

## 🧱 Project Structure

```
azure-vm-powershell-toolkit
│
├── modules
│   ├── vm-start.ps1
│   ├── vm-stop.ps1
│   ├── vm-status.ps1
│   ├── vm-snapshot.ps1
│   ├── vm-start-tag.ps1
│   └── vm-stop-tag.ps1
│
├── config
│   └── servers.json
│
├── .github
│   └── workflows
│       └── azure-vm-toolkit.yml
│
└── README.md
```

---

## ⚙️ Workflow Usage

The GitHub Actions workflow supports manual execution via `workflow_dispatch`.

### Inputs

| Parameter     | Description                         | Example     |
| ------------- | ----------------------------------- | ----------- |
| action        | Action to perform                   | start, stop |
| vmName        | VM name or `all`                    | server2022  |
| resourceGroup | Resource group (for single VM mode) | RG-Lab      |

---

## ▶️ Examples

### Start a single VM

```
action: start
vmName: server2022
resourceGroup: RG-Lab
```

### Stop all VMs

```
action: stop
vmName: all
```

### Stop VMs by tag

```
action: stop-tag
```

---

## 🔐 Authentication

This project uses **OIDC (OpenID Connect)** between GitHub Actions and Azure.

Benefits:

* No client secrets stored in GitHub
* Short-lived tokens
* Secure and recommended by Microsoft

Flow:

```
GitHub Actions → OIDC Token → Azure AD → Service Principal → RBAC → Azure Resources
```

---

## 🧠 Key Concepts Demonstrated

* Azure RBAC (role-based access control)
* Service Principals and App Registrations
* GitHub Actions CI/CD workflows
* PowerShell automation with Az module
* Cross-resource-group VM management
* Parallel execution using `ForEach-Object -Parallel`

---

## 💡 Real-World Use Cases

* Automated VM shutdown for cost optimization
* Dev/Test environment lifecycle management
* Scheduled infrastructure operations
* Cloud automation demos and labs

---

## 📈 Future Improvements

* Logging and reporting (CSV / JSON)
* Tag-based scheduling (start/stop by environment)
* Notification integration (Teams / Email)
* Full PowerShell module packaging
* Integration with Azure Automation or Functions

---

## 📜 License

MIT License


  
