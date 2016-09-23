@---------------------------------------------------------------------------------
	.section ".init"
@---------------------------------------------------------------------------------
	.global _start
	.align	4
	.arm

.global sdmmc_engine_start
.global sdmmc_engine_start_sync
.global sdmmc_engine_end
.global irqTable
.global irq
.global sdmmc_engine_size


sdmmc_engine_size:
	.word	sdmmc_engine_end - sdmmc_engine_start
irqTable:
	.word	0x00000000
irq:
	.word	0x00000000
	
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

sdmmc_engine_start:
	ldr	r3, =myIrqHandler
	bl	_blx_r3_stub		@ jump to user code
  
  @ exit after return
	b	exit
	
@---------------------------------------------------------------------------------
_blx_r3_stub:
@---------------------------------------------------------------------------------
	bx	r3	

@---------------------------------------------------------------------------------
@ my patch
@---------------------------------------------------------------------------------
myPatch:
	ldr    r1, =sdmmc_engine_start        @ my custom handler
	str    r2, [r1, #-8]		@ irqtable
	str    r0, [r1, #-4]		@ irq
	b      got_handler
.pool	
got_handler:
	str	r0, [r12, #4]	@ IF Clear
@---------------------------------------------------------------------------------

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

exit:	
	ldmia	sp!,	{r0-r12} 
	ldmia	sp!,	{lr}
	bx		lr

.pool

sdmmc_engine_end:


