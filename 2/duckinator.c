#include <stdio.h>

int main() {
  // Initial values
  unsigned int vals[2] = {1, 2};

  // When to stop
  int limit = 4000000; // 4,000,000

  // Return value
  unsigned int ret = 0;

  int i;
  unsigned int new;

  if ( vals[0] % 2 == 0 ) {
    ret += vals[0];
  }
  if ( vals[1] % 2 == 0 ) {
    ret += vals[1];
  }

  // Run (limit-2) times...
  for (i = 2; new <= limit; i++) {
    new = vals[0]+vals[1];
    vals[0] = vals[1];
    vals[1] = new;
    if (vals[1] % 2 == 0)
      ret += new;
  }

  printf("%u\n", ret); // Include the initial values!

  return 0;
}
