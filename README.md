# Puppet User & LAMP Stack Automation

![Puppet](https://img.shields.io/badge/Puppet-Open%20Source-FF6C37?style=flat&logo=puppet)
![LAMP](https://img.shields.io/badge/LAMP-Stack-4c4c4c?style=flat&logo=linux)
![Ubuntu](https://img.shields.io/badge/Tested%20on-Ubuntu%2022.04+-orange)

This repository provides **Puppet manifests** to:
- Automatically create Linux users and groups with **secure password hashing**
- Deploy a fully functional **LAMP stack** (Linux, Apache, MariaDB, PHP)

Perfect for **server bootstrapping**, **infrastructure as code**, and **repeatable setups**.

---

## Features

| Feature | Description |
|-------|-----------|
| **User Management** | Create users with hashed passwords, groups, and home directories |
| **LAMP Stack** | Install and configure Apache, MariaDB, PHP in one command |
| **Idempotent** | Safe to run multiple times — Puppet ensures desired state |
| **Local Testing** | No Puppet master required — use `puppet apply` directly |

---

## Prerequisites

- **OS**: Ubuntu/Debian-based (tested on Ubuntu 22.04+)
- **Access**: Root or `sudo` privileges
- **Network**: Internet connection (for package installation)

---

## 1. Install Puppet

Update your system and install Puppet after cloning this repo:

```bash
git clone https://github.com/BrandynLo/Puppet_LampStack
sudo apt update && sudo apt upgrade -y
sudo apt install puppet
```

# 2. Generate Hashed Passwords
```bash
openssl passwd -6 -salt xyz YourStrongPassword
```
Example output:
$6$xyz$a1B2c3D4e5F6g7H8i9J0...

# 3. Define your groups and users in the Puppet manifest:
Create your personal users and groups. 
```bash
sudo puppet apply Users.pp

```
# 4. LAMP Stack Configuration (LAMP.pp)
Automate your web server stack installation using Puppet. Your manifest should include installation and configuration for:
Apache
MariaDB

Edit the /home/brandyn** to your personal root login user. 
PHP
```bash
sudo puppet apply LampStack.pp
```
## Puppet uses declarative manifests to define the desired state of your system. When you run puppet apply, Puppet ensures:

Users and groups exist as defined

Packages (like Apache, MariaDB, PHP) are installed and configured

System state matches the declarations in your manifests

Verify your PHP is working and installed:
<img width="670" height="71" alt="image" src="https://github.com/user-attachments/assets/2efd1296-deba-4dd5-b485-57dd7ffdb2e0" />

<img width="1877" height="988" alt="image" src="https://github.com/user-attachments/assets/87dee219-6c54-4b6a-a614-bd1f3f2080b5" />


