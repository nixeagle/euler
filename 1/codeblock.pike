#!/usr/bin/env pike

int main() {
   int i;
   int out = 0;
   for(i=1; i < 1000; i++) {
      if(i % 3 == 0) {
         out += i;
      } else if(i % 5 == 0) {
         out += i;
      }
   }
   write(out + "\n");
}
