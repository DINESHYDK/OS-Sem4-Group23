#include "kernel/types.h"
#include "user/user.h"

int
main(void)
{
  printf("Free memory left: %d bytes\n", getfreemem());
  printf("Number of open files (current process): %d\n", getopenfiles());
  exit(0);
}