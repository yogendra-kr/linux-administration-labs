# Server Baseline

## General Information

Hostname: `prod-lab-01`

Operating System:
Ubuntu 25.04 (Plucky Puffin)

Kernel:
6.14.0-37-generic

Virtualization:
KVM (Proxmox)

## Hardware

- vCPU: 2
- Memory: 2 GB
- Disk: 20 GB

## Network

- Primary Network Interface: `<primary-network-interface>` 

IPv4:
192.168.x.xx/24

## Storage

Partition Layout:
- /boot
- LVM Root Volume

Notes:
The virtual disk size is 20 GB, while the root logical volume is approximately 10 GB. Remaining space is currently unallocated and will be expanded in a future project.

## Initial State

Fresh Ubuntu installation.
No additional software installed.
No security hardening had been performed at this stage.