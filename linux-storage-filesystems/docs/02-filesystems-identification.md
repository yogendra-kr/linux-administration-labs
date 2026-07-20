# Objective

Inspect the filesystem used by the root Logical Volume and understand how Linux mounts it during boot.

## Commands Used

```bash
mount | grep " on / "
df -Th
sudo blkid
cat /etc/fstab
findmnt /
```

# Findings

- The root filesystem (`/`) is hosted on the Logical Volume `ubuntu-lv`.
- The root filesystem uses the `ext4` filesystem.
- The Physical Volume partition (`/dev/sda3`) is an `LVM2_member` and does not contain a filesystem directly.
- `/etc/fstab` defines the filesystems that are mounted automatically during system startup.
- The system uses persistent device identifiers (`/dev/disk/by-id` and `/dev/disk/by-uuid`) to ensure reliable mounting.
- `findmnt` confirms that `/` is backed by `/dev/mapper/ubuntu--vg-ubuntu--lv`.

# Conclusion

The root filesystem is an ext4 filesystem stored on an LVM Logical Volume. Linux mounts it automatically during boot using entries defined in `/etc/fstab`, allowing the filesystem to remain available regardless of changes to device names.