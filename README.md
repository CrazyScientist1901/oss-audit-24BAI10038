# README.md

**Student:** Rithika  
**Registration Number:** 24BA110038  
**Software Chosen:** Python  

## Project Overview

This project is a comprehensive audit of **Python** as an open-source software (OSS) project. The report covers the origin, philosophy, licensing, ethics, and Linux footprint of Python, alongside five practical shell scripts for system administration.


## Audit Highlights

### 1. Software Profile: Python

- **Category:** Programming Language

- **License:** PSF License (Permissive)

- **Key Problem Solved:** Bridged the gap between high-level power and low-level usability (C vs. Shell).

### 2. Ethical & Philosophical Analysis

- **Four Freedoms:** Python grants all four software freedoms.

- **Permissive Nature:** Unlike the GPL, the PSF license allows companies to modify Python and keep those changes proprietary.

- **The "Giants" Concept:** Discussion on how modern AI based of Python.

---

## Requirements
- **Linux Operating System:** Tested on Ubuntu 24.04.4 LTS via WSL2.
- **Bash Shell:** Required for executing `.sh` scripts.
- **Python 3:** Should be installed (e.g., `sudo apt install python3`).

## Shell Scripts Included
The project features five Bash scripts designed for Linux environment auditing:

1.  **`script1_identity.sh`**: Generates a system identity report including Distro, Kernel version, and Uptime.
2.  **`script2_inspector.sh`**: Checks if `python3` is installed, retrieves its version, and provides philosophical context.
3.  **`script3_auditor.sh`**: Audits critical system directories for permissions, ownership, and disk usage.
4.  **`script4_analyzer.sh`**: A log file utility that counts keyword occurrences (e.g., "ERROR") and displays the last five matches.
5.  **`script5_manifesto.sh`**: An interactive tool that generates a personalized Open Source Manifesto based on user input.

---

## How to Run the Scripts

### 1. Setup
Clone the repository and navigate to the directory:
```bash
git clone https://github.com/CrazyScientist1901/oss-audit-24BAI10038.git
cd oss-audit-24BA110038
```

### 2. Set Permissions
Make all scripts executable:
```bash
chmod +x script1_identity.sh script2_inspector.sh script3_auditor.sh script4_analyzer.sh script5_manifesto.sh
```

### 3. Execution Examples
- **System Audit:** `./script1_identity.sh` 
- **Package Check:** `./script2_inspector.sh` 
- **Directory Audit:** `./script3_auditor.sh`
- **Log Analysis:** `./script4_analyzer.sh /var/log/bootstrap.log error` 
- **Generate Manifesto:** `./script5_manifesto.sh` 

---

## Dependencies
- **dpkg:** Used for package status and metadata retrieval.
- **Standard Utilities:** Uses `ls`, `du`, `grep`, `awk`, `cut`, and `sed` for text processing and system reporting.

---

## Conclusion
This audit concludes that Python’s massive ecosystem and zero-cost barrier make it the industry standard for modern web scaling and AI. While proprietary alternatives like MATLAB offer centralized support for high-stakes engineering, Python’s community-driven model provides unmatched versatility and transparency.
