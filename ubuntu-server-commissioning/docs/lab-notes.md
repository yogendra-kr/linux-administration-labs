# Lab Notes

This document records commands, observations, and verification steps performed during the Ubuntu Server Commissioning Lab.

The purpose of this document is to maintain a personal learning record and troubleshooting reference.

---

# 1. Initial Server Verification

## Purpose

Capture the initial state of the newly installed Ubuntu Server before making changes.

## Commands Used

```bash
hostnamectl
cat /etc/os-release
ip -br a
lsblk
df -h
free -h
```

## Observations

Verified 
- hostname.
- Ubuntu version and kernel version.
- Network interface and IP configuration.
- Storage layout and LVM configuration.
- Disk usage, memory and swap status.

---

# 2. Package Update and Upgrade

## Purpose

Review and apply available system updates after installation.

## Commands Used

```bash
apt update
apt list --upgradable
apt upgrade
```

## Pre-change Protection

A Proxmox snapshot was created before applying system upgrades.

## Snapshot name

## Snapshot Name

```text
before-first-update
```

## Observations

- Updates reviewed before applying
- Proxmox snapshot created before upgrade
- Packages upgraded successfully.
- No reboot was required after upgrade.

# 3. User and Group Verification

## Purpose

Verify administrative user permissions.

## Command Used
```bash
groups
sudo passwd -S root     # Checks the status of root
```

## Observations

User was verified to have administrative group membership. 

```bash
adm
cdrom
sudo
dip
plugdev
users
```
Status of root returned `root L ...` Here `L` means **Locked**.

# 4. SSH Configuration Review

## Purpose

Review SSH configuration before applying security changes.

## Command Used

```bash
cat /etc/ssh/sshd_config
```

## Configuration Reviewed

```conf
PermitRootLogin without-password
PubkeyAuthentication yes
PasswordAuthentication yes
```

SSH root login is disabled by setting `PermitRootLogin no` in `sshd_config`, providing an additional layer of protection against direct remote root access.

## Service Verification

**Verified syntax before applying changes**

```bash
sudo sshd -t
```

**Restarted SSH service**

```bash
sudo systemctl restart ssh
```

**Verified service status**

```bash
sudo systemctl status ssh --no-pager
```

## Validation

- Confirmed SSH service was running.
- Tested access from a second SSH session before continuing.

# 5. Firewall Configuration

## Purpose

Enable and verify host firewall protection.

## Commands Used
```bash
ufw status verbose
ufw status
ufw allow OpenSSH
sudo ufw show added  # Verified before enabling
ufw enable
```

## Verification

- Firewall enabled successfully.
- SSH access remained available after enabling firewall.
- Firewall status checked after activation.

# 6. Server Health Check Script

## Purpose

Create a reusable health verification script.

## Commands Used
```bash
sudo chmod +x health-check.sh     # Made the script executable
```


## Execution
```bash
./health-check.sh
```

## Checks Performed

- Generation time
- Hostname
- Uptime
- Memory usage
- Disk usage
- Filesystem type
- Load average
- Top memory-consuming processes


## Validation

- [Script](../assets/screenshots/ubuntu-server-commissioning-04-ufw-rules.png) executed successfully without errors.