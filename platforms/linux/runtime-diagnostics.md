# Linux Runtime Diagnostics for COBOL Applications

When analyzing production failures on Linux, collect:

```sh
hostname
date
pwd
ulimit -a
env | sort
ps -fp <pid>
pmap <pid>
lsof -p <pid>
df -h
mount
ldd <executable>
```

## Review Areas

- Environment variables
- Shared library path
- File permissions
- Temporary directory space
- Core dump settings
- NFS or network filesystem behavior
- Scheduler-provided environment
- Current working directory
- Runtime configuration files
- Executable and shared object versions

