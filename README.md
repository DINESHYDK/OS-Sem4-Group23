
# 🖥️ Operating Systems Lab Project (NSCS210/CSC211) - Group 23

Welcome to the central repository for the Group 23 OS Lab Project. This repository contains our work for both the xv6 Kernel Customization (Project 1) and the Custom UNIX Shell & Utilities (Project 2).

---

## 👨‍💻 For Team Members: Read This First

If you are a member of Group 23, follow these steps to get started on your assigned tasks. Our codebase is clean, and we are working directly on the `main` branch.

**1. Clone the Repository:**
Open your WSL/Linux terminal and run:
```bash
git clone <PASTE_OUR_GITHUB_REPO_URL_HERE>
cd OS-Sem4-Group23
```

**2. Navigate to your Project:**
This repository is split into two distinct projects. 
* To work on the xv6 OS kernel, go to: `G23_Project1_xv6CustomizeSystemCalls/`
* To work on the C-based terminal utilities, go to: `G23_Project2_1_Unix_Commands/`

**3. Read Your Action Plan:**
Inside **both** of those folders, you will find a `TeamMates.md` file. Open it immediately. It contains your exact assignments, the files you need to modify, and instructions on how to submit your screenshots. Do not edit files assigned to others without communicating!

---

## 👩‍🏫 For the Instructor (Evaluation Guide)

Welcome, Dr. Mayank. This repository is structured to perfectly separate the kernel-space modifications from the user-space applications. 

### 📁 Directory Structure
* **`G23_Project1_xv6CustomizeSystemCalls/`**: Contains the complete modified xv6 operating system source code.
* **`G23_Project2_1_Unix_Commands/`**: Contains our pure C implementations of the UNIX shell and utilities (Option 1).

### 🚀 Project 1 Highlights (xv6 System Calls)
We have successfully hacked the MIT xv6 kernel to implement custom system calls crossing the user/kernel boundary. 
* Includes diagnostic calls (e.g., `sys_getreadcount`), process control (`sys_halt`), and hardware/memory analysis.
* All testing applications (e.g., `testapp.c`, `readcount_test.c`) are wired into the Makefile.
* **Proof of Execution:** A `Screenshots/` folder is provided containing visual proof of the kernel code logic and the QEMU terminal output for each system call.

### 🚀 Project 2 Highlights (UNIX Shell & Utilities)
We built a custom command-line interface from scratch using standard C libraries and system calls (`fork()`, `execvp()`, `waitpid()`).
* **The Engine:** A custom shell (`shell.c`) that parses user input and executes our custom utility binaries.
* **The Utilities:** Custom implementations of `cat`, `ls`, `grep`, `wc`, `cp`, `mv`, and `rm` (named uniquely to prevent system clashing).
* **Proof of Execution:** A dedicated `Screenshots/` folder demonstrating our shell successfully parsing commands and executing the utilities.

### 📝 Documentation
Detailed summaries and logic breakdowns for both projects can be found in their respective `Project_Summary.md` files located inside each subfolder.
