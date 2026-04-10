#!/bin/bash

echo "========================================"
echo "Yash Patidhar - Clean Commit Script"
echo "========================================"

# Commit 1: sys_getfreemem
echo "→ Creating Commit 1: sys_getfreemem"
git add kernel/kalloc.c kernel/defs.h kernel/syscall.h kernel/syscall.c kernel/sysproc.c user/user.h user/usys.pl user/getmem_test.c Makefile
git commit -m "Yash Patidhar: Implemented sys_getfreemem()

- Added getfreemem() helper in kalloc.c
- Added sys_getfreemem() in sysproc.c
- Updated syscall routing files
- Added getmem_test.c and updated Makefile"

echo "✅ Commit 1 done (sys_getfreemem)"

# Commit 2: sys_getopenfiles
echo "→ Creating Commit 2: sys_getopenfiles"
git add kernel/file.c kernel/defs.h kernel/syscall.h kernel/syscall.c kernel/sysproc.c user/user.h user/usys.pl user/getmem_test.c Makefile
git commit -m "Yash Patidhar: Implemented sys_getopenfiles()

- Added getopenfiles() helper in file.c
- Added sys_getopenfiles() in sysproc.c
- Updated syscall routing files
- Test program already included"

echo "✅ Commit 2 done (sys_getopenfiles)"

echo ""
echo "========================================"
echo "Done! Now push using: git push origin main"
echo "========================================"
