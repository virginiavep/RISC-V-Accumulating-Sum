	add x11, x11, x0 #i
	add x12, x12, x0 #sum
loop: slli t0, t11, 2 #offset
	add t1, t0, x10 # calculate address of vals[i] and store in t3
	lw t2, 0(t1) # load the word for vals[i] to register t2
	beq t2, x0, Exit #if vals[i] = 0 exit
	add x12, x12, t2 #sum = sum + vals[i]
	add x11, x11, 1 # i++
	bne t2, x0, loop # if vals[i] != 0, loop 
Exit: