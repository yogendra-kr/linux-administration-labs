# Objective

Inspect the current storage configuration before making any storage changes.

## Environment 

- OS: `Ubuntu Server 25.04 (Plucky Puffin)`
- Hostname: `prod-lab-01`
- Hypervisor: `Proxmox VE`
- Disk Size: `20 GB`

## Commands Used

```bash
lsblk -f
df -h
sudo pvs
sudo vgs
sudo lvs
sudo fdisk -l
```

## Findings

- The server has one 20 GB virtual disk (`/dev/sda`) using a GPT partition table.
- The `/boot` filesystem resides on a dedicated ext4 partition (`/dev/sda2`).
- The remaining disk space is allocated to `/dev/sda3`, which is configured as an LVM Physical Volume (PV).
- The Physical Volume belongs to the Volume Group `ubuntu-vg`.
- The root filesystem (`/`) is hosted on the Logical Volume `ubuntu-lv`.
- The root filesystem uses the `ext4` filesystem.
- The Volume Group currently has approximately **8.22 GB** of unallocated space, which can be used to expand existing Logical Volumes or create new ones.

## Conclusion

The inspection confirms that the server is already configured with LVM. Since the Volume Group has approximately **8.22 GB** of free space, the root Logical Volume can be extended without adding another virtual disk. This provides a safe environment for the first storage expansion exercise.