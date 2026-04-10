#!/bin/bash

echo "========================================"
echo "Yash Patidhar - System Calls Commit Script"
echo "========================================"

# Commit 1: Only for sys_getfreemem
echo "Creating Commit 1 for: sys_getfreemem"

git add kernel/kalloc.c \
        kernel/defs.h \
        kernel/syscall.h \
        kernel/syscall.c \
        kernel/sysproc.c \
        user/user.h \
        user/usys.pl \
        user/getmem_test.c \
        Makefile

git commit -m "Yash Patidar: Implemented sys_getfreemem()

- Added getfreemem() helper function in kalloc.c
- Added sys_getfreemem() system call in sysproc.c
- Updated syscall routing (syscall.h, syscall.c, user.h, usys.pl)
- Added getmem_test.c program and updated Makefile for testing"

echo "✅ Commit 1 (sys_getfreemem) done."

# Commit 2: Only for sys_getopenfiles
echo "Creating Commit 2 for: sys_getopenfiles"

git add kernel/file.c \
        kernel/defs.h \
        kernel/syscall.h \
        kernel/syscall.c \
        kernel/sysproc.c \
        user/user.h \
        user/usys.pl \
        user/getmem_test.c \
        Makefile

git commit -m "Yash Patidar: Implemented sys_getopenfiles()

- Added getopenfiles() helper function in file.c
- Added sys_getopenfiles() system call in sysproc.c
- Updated syscall routing files
- Test program getmem_test.c (already added in previous commit)"

echo "✅ Commit 2 (sys_getopenfiles) done."

echo ""
echo "========================================"
echo "Both commits created successfully!"
echo ""
echo "You can now push using:"
echo "git push origin main"
echo "========================================"