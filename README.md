# Linux Shell Monitoring Scripts

This repository contains practical Linux shell scripting exercises focused on real-world monitoring tasks.  
Developed on a RHEL EC2 instance as part of hands-on Linux and DevOps practice.

---

## Project Overview

This project demonstrates fundamental and intermediate Bash scripting skills including:

- Disk usage monitoring
- Memory usage monitoring
- Service status checks
- Multi-host connectivity checks
- Combined system health-check automation
- Proper exit status handling
- File processing using loops
- Text parsing using awk and tr

---

## Scripts Included

### disk_check.sh
Checks root (`/`) filesystem usage and warns if usage exceeds 80%.

### memory_check.sh
Monitors available system memory and alerts if it falls below 500MB.

### service_check.sh
Dynamically checks whether a specified system service is running.

### ping_check.sh
Reads hosts from `servers.txt` and checks connectivity using `ping`.

### health_check.sh
Combined system health monitoring script that verifies:
- Disk usage
- Memory availability
- SSH service status

Returns:
- `exit 0` → Healthy
- `exit 1` → Unhealthy

### even_odd.sh
Checks whether a given number is even or odd.

### loop.sh
Prints numbers up to a user-defined limit using a C-style loop.

### file_check.sh
Verifies whether a file exists.

### sum.sh
Performs addition of two user-provided numbers.

### greet.sh
Reads names from a file and prints greeting messages.

---

## Environment

- OS: Red Hat Enterprise Linux 9 (RHEL 9)
- Platform: AWS EC2
- Shell: Bash
- Version Control: Git and GitHub

---

## Sample Output

Sample execution outputs are available in:

output.txt

---

## Key Learning Highlights

- Command substitution (`$(...)`)
- Conditional logic (`if`, `&&`)
- Looping (`for`, `while read`)
- Exit status handling (`$?`, `exit 0`, `exit 1`)
- Service management (`systemctl`)
- Text processing (`awk`, `tr`)
- Safe scripting practices (quoting variables, handling empty lines)
- Script execution permissions (`chmod +x`)

---

## Purpose

This repository was created to strengthen Linux shell scripting fundamentals and simulate real-world monitoring use cases relevant to DevOps and system administration roles.

---

## Future Improvements

- Add logging functionality
- Add argument parsing using `getopts`
- Schedule scripts via cron
- Integrate with monitoring tools

---

## Author

Developed as part of hands-on Linux practice and interview preparation.
