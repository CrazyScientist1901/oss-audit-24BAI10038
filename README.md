# The Open Source Audit: Python Project

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

## Shell Scripts Included

The project features five Bash scripts designed for Linux environment auditing:

1.  **`script1_identity.sh`**: Displays system identity (Distro, Kernel, Uptime).
2.  **`script2_inspector.sh`**: Checks if `python3` is installed and provides philosophical context.
3.  **`script3_auditor.sh`**: Loops through system directories to report permissions, ownership, and size.
4.  **`script4_analyzer.sh`**: Reads log files (like `bootstrap.log`) to count and display specific keywords like "ERROR".
5.  **`script5_manifesto.sh`**: An interactive tool that generates a personalized Open Source Manifesto `.txt` file.

---

## Conclusion
The audit concludes that while proprietary tools like MATLAB have a place in "mission-critical" engineering, Python’s ecosystem and zero-cost barrier make it the industry standard for web scaling and AI.
