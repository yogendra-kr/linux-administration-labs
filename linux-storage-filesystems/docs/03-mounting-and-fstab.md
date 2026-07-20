# Objective

Understand mount points, active mounts, and persistent mount configuration.

# Findings

- A mount point is simply a directory until a filesystem is mounted on it.
- `findmnt` displays active mount relationships.
- `/etc/fstab` defines persistent mounts used during boot.
- `findmnt /mnt/lab-storage` produced no output because no filesystem was mounted there.

# Conclusion

Linux distinguishes between a directory and a mounted filesystem. Creating a directory does not automatically mount storage.