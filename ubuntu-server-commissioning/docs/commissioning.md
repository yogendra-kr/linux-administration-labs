# Server Commissioning

## Objective

This document records the post-installation commissioning activities performed after the initial Ubuntu Server installation.

The goal was to prepare the server for secure administration and verify that the system was operating correctly.

## Activities Performed

### System Update

- Reviewed available package upgrades
- Updated installed packages
- Verified system status after upgrade

### Snapshot and Rollback Planning

- Created a Proxmox snapshot before system changes
- Used the snapshot as a rollback point for unexpected issues

### SSH Configuration Review

- Reviewed SSH server configuration
- Verified SSH access from a second session before applying changes
- Confirmed remote administration access remained available

### Firewall Configuration

- Enabled UFW firewall
- Verified firewall status
- Confirmed required SSH access was allowed

### System Verification

Performed validation checks:

- Hostname verification
- Operating system verification
- Network connectivity verification
- Storage verification
- Memory verification
- Service status verification

## Result

The Ubuntu Server was successfully commissioned as a Linux administration lab environment with documented configuration steps and verification procedures.