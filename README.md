# RISC-V-Accumulating-Sum-of-Values
Converting the pseudo code to RISCV assembly

  int i=0;
  int sum=0;
  while (vals[i]!=0) {     //vals is an array of words (4 bytes) base address is in x10

               sum=sum+vals[i];      //i is in x11 and sum is in x12

               i++;

            }
