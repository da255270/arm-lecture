	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}
        mov r3,#0xFFFFFFFF
        mov r4,#0
        mov r5,#0
        mov r6,#1
loop:      
        add r4,r6,r3	
        mov r3,r6
        mov r6,r4
        add r5,r5,#1
        cmp r5,r0
        ble loop
        mov r0,r6
	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION


	.size fibonacci, .-fibonacci
	.end
