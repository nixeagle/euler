#include <stdio.h>

int main() {
  int ret = 0;
  int i;

  for ( i = 0; i <= 999; i++ ) {
    if ( (i%3 == 0) || (i%5 == 0) )
      ret += i;
  }
  printf("%i\n", ret);

  return 0;
}
