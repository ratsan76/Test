_initialize:
;hardware.h,140 :: 		void initialize()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;hardware.h,142 :: 		GPIO_Clk_Enable(&GPIOA_BASE);
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Clk_Enable+0
;hardware.h,143 :: 		GPIO_Clk_Enable(&GPIOB_BASE);
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Clk_Enable+0
;hardware.h,144 :: 		GPIO_Clk_Enable(&GPIOC_BASE);
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Clk_Enable+0
;hardware.h,145 :: 		GPIO_Clk_Enable(&GPIOD_BASE);
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Clk_Enable+0
;hardware.h,146 :: 		GPIO_Clk_Enable(&GPIOE_BASE);
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Clk_Enable+0
;hardware.h,147 :: 		GPIO_Clk_Enable(&GPIOF_BASE);
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Clk_Enable+0
;hardware.h,149 :: 		GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_ALL);
MOVW	R1, #65535
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
;hardware.h,150 :: 		GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_ALL);
MOVW	R1, #65535
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
;hardware.h,151 :: 		GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_ALL);
MOVW	R1, #65535
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
;hardware.h,152 :: 		GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_ALL);
MOVW	R1, #65535
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
;hardware.h,153 :: 		GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_ALL);
MOVW	R1, #65535
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
;hardware.h,154 :: 		GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_ALL);
MOVW	R1, #65535
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
;hardware.h,157 :: 		GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_0 | _GPIO_PINMASK_1 | _GPIO_PINMASK_2 | _GPIO_PINMASK_4 | _GPIO_PINMASK_6 | _GPIO_PINMASK_8 | _GPIO_PINMASK_9 );
MOVW	R1, #855
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
;hardware.h,158 :: 		GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_1 | _GPIO_PINMASK_3 | _GPIO_PINMASK_5 | _GPIO_PINMASK_7);
MOVS	R1, #170
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
;hardware.h,159 :: 		GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_0 | _GPIO_PINMASK_1 | _GPIO_PINMASK_7);
MOVS	R1, #131
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
;hardware.h,161 :: 		ADC1_Init();
BL	_ADC1_Init+0
;hardware.h,162 :: 		UART1_Init_Advanced(115200, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_USART1_PA9_10);
MOVW	R0, #lo_addr(__GPIO_MODULE_USART1_PA9_10+0)
MOVT	R0, #hi_addr(__GPIO_MODULE_USART1_PA9_10+0)
PUSH	(R0)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
MOV	R0, #115200
BL	_UART1_Init_Advanced+0
ADD	SP, SP, #4
;hardware.h,163 :: 		USART1_SRbits.RXNE = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(USART1_SRbits+0)
MOVT	R0, #hi_addr(USART1_SRbits+0)
STR	R1, [R0, #0]
;hardware.h,164 :: 		USART1_CR1bits.RXNEIE = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(USART1_CR1bits+0)
MOVT	R0, #hi_addr(USART1_CR1bits+0)
STR	R1, [R0, #0]
;hardware.h,165 :: 		NVIC_SetIntPriority(IVT_INT_USART1,3);
MOVS	R1, #3
MOVS	R0, #53
BL	_NVIC_SetIntPriority+0
;hardware.h,166 :: 		NVIC_IntEnable(IVT_INT_USART1);
MOVW	R0, #53
BL	_NVIC_IntEnable+0
;hardware.h,167 :: 		EnableInterrupts();
BL	_EnableInterrupts+0
;hardware.h,169 :: 		}
L_end_initialize:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _initialize
_HCSR04_Read:
;hardware.h,171 :: 		void HCSR04_Read()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;hardware.h,173 :: 		TRIG_PS1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;hardware.h,174 :: 		Delay_us(10);
MOVW	R7, #398
MOVT	R7, #0
NOP
NOP
L_HCSR04_Read0:
SUBS	R7, R7, #1
BNE	L_HCSR04_Read0
NOP
NOP
NOP
;hardware.h,175 :: 		TRIG_PS1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;hardware.h,176 :: 		Delay_us(1);
MOVW	R7, #38
MOVT	R7, #0
NOP
NOP
L_HCSR04_Read2:
SUBS	R7, R7, #1
BNE	L_HCSR04_Read2
NOP
NOP
NOP
;hardware.h,177 :: 		while(!ECHO_PS1);
L_HCSR04_Read4:
MOVW	R1, #lo_addr(GPIOD_IDR+0)
MOVT	R1, #hi_addr(GPIOD_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_HCSR04_Read5
IT	AL
BAL	L_HCSR04_Read4
L_HCSR04_Read5:
;hardware.h,179 :: 		while(ECHO_PS1)
L_HCSR04_Read6:
MOVW	R1, #lo_addr(GPIOD_IDR+0)
MOVT	R1, #hi_addr(GPIOD_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	EQ
BEQ	L_HCSR04_Read7
;hardware.h,181 :: 		HCSR04_Echo_Time++;
MOVW	R1, #lo_addr(_HCSR04_Echo_Time+0)
MOVT	R1, #hi_addr(_HCSR04_Echo_Time+0)
LDR	R0, [R1, #0]
ADDS	R0, R0, #1
STR	R0, [R1, #0]
;hardware.h,182 :: 		Delay_us(1);
MOVW	R7, #38
MOVT	R7, #0
NOP
NOP
L_HCSR04_Read8:
SUBS	R7, R7, #1
BNE	L_HCSR04_Read8
NOP
NOP
NOP
;hardware.h,183 :: 		}
IT	AL
BAL	L_HCSR04_Read6
L_HCSR04_Read7:
;hardware.h,184 :: 		Distance = HCSR04_Echo_Time * HCSR04_Number;
MOVW	R0, #lo_addr(_HCSR04_Echo_Time+0)
MOVT	R0, #hi_addr(_HCSR04_Echo_Time+0)
VLDR	#1, S0, [R0, #0]
VCVT.F32	#0, S1, S0
MOVW	R0, #lo_addr(_HCSR04_Number+0)
MOVT	R0, #hi_addr(_HCSR04_Number+0)
VLDR	#1, S0, [R0, #0]
VMUL.F32	S0, S1, S0
MOVW	R0, #lo_addr(_Distance+0)
MOVT	R0, #hi_addr(_Distance+0)
VSTR	#1, S0, [R0, #0]
;hardware.h,185 :: 		FloatToStr(Distance, Distance_STR);
MOVW	R0, #lo_addr(_Distance_STR+0)
MOVT	R0, #hi_addr(_Distance_STR+0)
BL	_FloatToStr+0
;hardware.h,186 :: 		Delay_us(1000);
MOVW	R7, #39998
MOVT	R7, #0
NOP
NOP
L_HCSR04_Read10:
SUBS	R7, R7, #1
BNE	L_HCSR04_Read10
NOP
NOP
NOP
;hardware.h,187 :: 		UART1_Write_Text(Distance_STR);
MOVW	R0, #lo_addr(_Distance_STR+0)
MOVT	R0, #hi_addr(_Distance_STR+0)
BL	_UART1_Write_Text+0
;hardware.h,188 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;hardware.h,189 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;hardware.h,191 :: 		HCSR04_Echo_Time = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HCSR04_Echo_Time+0)
MOVT	R0, #hi_addr(_HCSR04_Echo_Time+0)
STR	R1, [R0, #0]
;hardware.h,192 :: 		}
L_end_HCSR04_Read:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _HCSR04_Read
_USART1_RX_interrupt:
;Drip_Test.c,2 :: 		void USART1_RX_interrupt() iv IVT_INT_USART1 ics ICS_AUTO{
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,4 :: 		test = UART1_Read();
BL	_UART1_Read+0
MOVW	R1, #lo_addr(_test+0)
MOVT	R1, #hi_addr(_test+0)
STRB	R0, [R1, #0]
;Drip_Test.c,5 :: 		if(flag == 1)
MOVW	R0, #lo_addr(_flag+0)
MOVT	R0, #hi_addr(_flag+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_USART1_RX_interrupt12
;Drip_Test.c,8 :: 		if(test != '~')
MOVW	R0, #lo_addr(_test+0)
MOVT	R0, #hi_addr(_test+0)
LDRB	R0, [R0, #0]
CMP	R0, #126
IT	EQ
BEQ	L_USART1_RX_interrupt13
;Drip_Test.c,10 :: 		receive[counter++] = test;
MOVW	R2, #lo_addr(_counter+0)
MOVT	R2, #hi_addr(_counter+0)
LDRB	R1, [R2, #0]
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
ADDS	R1, R0, R1
MOVW	R0, #lo_addr(_test+0)
MOVT	R0, #hi_addr(_test+0)
LDRB	R0, [R0, #0]
STRB	R0, [R1, #0]
MOV	R0, R2
LDRB	R0, [R0, #0]
ADDS	R0, R0, #1
STRB	R0, [R2, #0]
;Drip_Test.c,11 :: 		}
IT	AL
BAL	L_USART1_RX_interrupt14
L_USART1_RX_interrupt13:
;Drip_Test.c,14 :: 		flag1 = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_flag1+0)
MOVT	R0, #hi_addr(_flag1+0)
STRB	R1, [R0, #0]
;Drip_Test.c,15 :: 		receive[counter++] = test;
MOVW	R2, #lo_addr(_counter+0)
MOVT	R2, #hi_addr(_counter+0)
LDRB	R1, [R2, #0]
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
ADDS	R1, R0, R1
MOVW	R0, #lo_addr(_test+0)
MOVT	R0, #hi_addr(_test+0)
LDRB	R0, [R0, #0]
STRB	R0, [R1, #0]
MOV	R0, R2
LDRB	R0, [R0, #0]
ADDS	R0, R0, #1
STRB	R0, [R2, #0]
;Drip_Test.c,16 :: 		}
L_USART1_RX_interrupt14:
;Drip_Test.c,18 :: 		}
L_USART1_RX_interrupt12:
;Drip_Test.c,19 :: 		if (test == '*')
MOVW	R0, #lo_addr(_test+0)
MOVT	R0, #hi_addr(_test+0)
LDRB	R0, [R0, #0]
CMP	R0, #42
IT	NE
BNE	L_USART1_RX_interrupt15
;Drip_Test.c,21 :: 		flag = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_flag+0)
MOVT	R0, #hi_addr(_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,22 :: 		receive[counter++] = test;
MOVW	R2, #lo_addr(_counter+0)
MOVT	R2, #hi_addr(_counter+0)
LDRB	R1, [R2, #0]
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
ADDS	R1, R0, R1
MOVW	R0, #lo_addr(_test+0)
MOVT	R0, #hi_addr(_test+0)
LDRB	R0, [R0, #0]
STRB	R0, [R1, #0]
MOV	R0, R2
LDRB	R0, [R0, #0]
ADDS	R0, R0, #1
STRB	R0, [R2, #0]
;Drip_Test.c,23 :: 		}
L_USART1_RX_interrupt15:
;Drip_Test.c,24 :: 		}
L_end_USART1_RX_interrupt:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _USART1_RX_interrupt
_main:
;Drip_Test.c,26 :: 		void main() {
;Drip_Test.c,27 :: 		initialize();
BL	_initialize+0
;Drip_Test.c,28 :: 		UART1_Write_Text("Drip Program Started...\n\r");
MOVW	R0, #lo_addr(?lstr1_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr1_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,30 :: 		while(1)
L_main16:
;Drip_Test.c,32 :: 		if (flag1 == 1)
MOVW	R0, #lo_addr(_flag1+0)
MOVT	R0, #hi_addr(_flag1+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_main18
;Drip_Test.c,34 :: 		counter = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_counter+0)
MOVT	R0, #hi_addr(_counter+0)
STRB	R1, [R0, #0]
;Drip_Test.c,35 :: 		flag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_flag+0)
MOVT	R0, #hi_addr(_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,36 :: 		flag1 = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_flag1+0)
MOVT	R0, #hi_addr(_flag1+0)
STRB	R1, [R0, #0]
;Drip_Test.c,37 :: 		Delay_ms(50);
MOVW	R7, #33918
MOVT	R7, #30
NOP
NOP
L_main19:
SUBS	R7, R7, #1
BNE	L_main19
NOP
NOP
NOP
;Drip_Test.c,38 :: 		memmove(receive, receive, 1);
MOVS	R2, #1
SXTH	R2, R2
MOVW	R1, #lo_addr(_receive+0)
MOVT	R1, #hi_addr(_receive+0)
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_memmove+0
;Drip_Test.c,39 :: 		working();
BL	_working+0
;Drip_Test.c,40 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,41 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,42 :: 		memset(receive, '\0', sizeof(receive));
MOVS	R2, #50
SXTH	R2, R2
MOVS	R1, #0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_memset+0
;Drip_Test.c,43 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_main21:
SUBS	R7, R7, #1
BNE	L_main21
NOP
NOP
NOP
;Drip_Test.c,44 :: 		}
L_main18:
;Drip_Test.c,45 :: 		UART1_Write_Text("Distance : ");
MOVW	R0, #lo_addr(?lstr2_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr2_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,46 :: 		HCSR04_Read();
BL	_HCSR04_Read+0
;Drip_Test.c,47 :: 		UART1_Write_Text("ADC_Data : ");
MOVW	R0, #lo_addr(?lstr3_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr3_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,48 :: 		Load_Cell_Data_PS_1 = ADC1_Read(1);
MOVS	R0, #1
BL	_ADC1_Read+0
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1+0)
STRH	R0, [R1, #0]
;Drip_Test.c,49 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_main23:
SUBS	R7, R7, #1
BNE	L_main23
NOP
NOP
NOP
;Drip_Test.c,50 :: 		IntToStr(Load_Cell_Data_PS_1, Load_Cell_Data_PS_1_STR);
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1_STR+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1_STR+0)
BL	_IntToStr+0
;Drip_Test.c,51 :: 		UART1_Write_Text(Load_Cell_Data_PS_1_STR);
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1_STR+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1_STR+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,52 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,53 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,54 :: 		Delay_ms(300);
MOVW	R7, #6910
MOVT	R7, #183
NOP
NOP
L_main25:
SUBS	R7, R7, #1
BNE	L_main25
NOP
NOP
NOP
;Drip_Test.c,55 :: 		}
IT	AL
BAL	L_main16
;Drip_Test.c,56 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
_working:
;Drip_Test.c,60 :: 		void working()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,63 :: 		if((strcmp(receive, "*P1D1S0~") == 0))
MOVW	R0, #lo_addr(?lstr4_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr4_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working27
;Drip_Test.c,65 :: 		while (PR_ST1_IR == 1)
L_working28:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	EQ
BEQ	L_working29
;Drip_Test.c,67 :: 		UART1_Write_Text(PR_ST1_Wait);
MOVW	R0, #lo_addr(_PR_ST1_Wait+0)
MOVT	R0, #hi_addr(_PR_ST1_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,68 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,69 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,70 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working30:
SUBS	R7, R7, #1
BNE	L_working30
NOP
NOP
NOP
;Drip_Test.c,71 :: 		}
IT	AL
BAL	L_working28
L_working29:
;Drip_Test.c,72 :: 		UART1_Write_Text("Object Detected...\n\r");
MOVW	R0, #lo_addr(?lstr5_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr5_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,73 :: 		while(PS1_flag == 0)
L_working32:
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_working33
;Drip_Test.c,75 :: 		Load_Cell_Data_PS_1 = ADC1_Read(1);
MOVS	R0, #1
BL	_ADC1_Read+0
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1+0)
STRH	R0, [R1, #0]
;Drip_Test.c,76 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_working34:
SUBS	R7, R7, #1
BNE	L_working34
NOP
NOP
NOP
;Drip_Test.c,77 :: 		if (Load_Cell_Data_PS_1 < loadcell_thresold)
MOVW	R0, #lo_addr(_loadcell_thresold+0)
MOVT	R0, #hi_addr(_loadcell_thresold+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1+0)
LDRH	R0, [R0, #0]
CMP	R0, R1
IT	CS
BCS	L_working36
;Drip_Test.c,79 :: 		PS1_flag = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,80 :: 		}
L_working36:
;Drip_Test.c,81 :: 		}
IT	AL
BAL	L_working32
L_working33:
;Drip_Test.c,82 :: 		PS1_flag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,83 :: 		Glass_Detected_PS1();
BL	_Glass_Detected_PS1+0
;Drip_Test.c,84 :: 		PR_ST1_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,85 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working37:
SUBS	R7, R7, #1
BNE	L_working37
NOP
NOP
NOP
;Drip_Test.c,86 :: 		PR_ST1_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,87 :: 		success();
BL	_success+0
;Drip_Test.c,88 :: 		}
IT	AL
BAL	L_working39
L_working27:
;Drip_Test.c,89 :: 		else if ((strcmp(receive, "*P1D1S1~") == 0))
MOVW	R0, #lo_addr(?lstr6_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr6_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working40
;Drip_Test.c,91 :: 		while (PR_ST1_IR == 1)
L_working41:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	EQ
BEQ	L_working42
;Drip_Test.c,93 :: 		UART1_Write_Text(PR_ST1_Wait);
MOVW	R0, #lo_addr(_PR_ST1_Wait+0)
MOVT	R0, #hi_addr(_PR_ST1_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,94 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,95 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,96 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working43:
SUBS	R7, R7, #1
BNE	L_working43
NOP
NOP
NOP
;Drip_Test.c,97 :: 		}
IT	AL
BAL	L_working41
L_working42:
;Drip_Test.c,98 :: 		UART1_Write_Text("Object Detected...\n\r");
MOVW	R0, #lo_addr(?lstr7_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr7_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,99 :: 		while(PS1_flag == 0)
L_working45:
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_working46
;Drip_Test.c,101 :: 		Load_Cell_Data_PS_1 = ADC1_Read(1);
MOVS	R0, #1
BL	_ADC1_Read+0
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1+0)
STRH	R0, [R1, #0]
;Drip_Test.c,102 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_working47:
SUBS	R7, R7, #1
BNE	L_working47
NOP
NOP
NOP
;Drip_Test.c,103 :: 		if (Load_Cell_Data_PS_1 < loadcell_thresold)
MOVW	R0, #lo_addr(_loadcell_thresold+0)
MOVT	R0, #hi_addr(_loadcell_thresold+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1+0)
LDRH	R0, [R0, #0]
CMP	R0, R1
IT	CS
BCS	L_working49
;Drip_Test.c,105 :: 		PS1_flag = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,106 :: 		}
L_working49:
;Drip_Test.c,107 :: 		}
IT	AL
BAL	L_working45
L_working46:
;Drip_Test.c,108 :: 		PS1_flag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,109 :: 		Glass_Detected_PS1();
BL	_Glass_Detected_PS1+0
;Drip_Test.c,110 :: 		PR_ST1_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,111 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working50:
SUBS	R7, R7, #1
BNE	L_working50
NOP
NOP
NOP
;Drip_Test.c,112 :: 		PR_ST1_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,113 :: 		PR_ST1_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,114 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working52:
SUBS	R7, R7, #1
BNE	L_working52
NOP
NOP
NOP
;Drip_Test.c,115 :: 		PR_ST1_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,116 :: 		success();
BL	_success+0
;Drip_Test.c,117 :: 		}
IT	AL
BAL	L_working54
L_working40:
;Drip_Test.c,119 :: 		else if ((strcmp(receive, "*P1D2S0~") == 0))
MOVW	R0, #lo_addr(?lstr8_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr8_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working55
;Drip_Test.c,121 :: 		while (PR_ST1_IR == 1)
L_working56:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	EQ
BEQ	L_working57
;Drip_Test.c,123 :: 		UART1_Write_Text(PR_ST1_Wait);
MOVW	R0, #lo_addr(_PR_ST1_Wait+0)
MOVT	R0, #hi_addr(_PR_ST1_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,124 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,125 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working58:
SUBS	R7, R7, #1
BNE	L_working58
NOP
NOP
NOP
;Drip_Test.c,126 :: 		}
IT	AL
BAL	L_working56
L_working57:
;Drip_Test.c,127 :: 		UART1_Write_Text("Object Detected...\n\r");
MOVW	R0, #lo_addr(?lstr9_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr9_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,128 :: 		while(PS1_flag == 0)
L_working60:
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_working61
;Drip_Test.c,130 :: 		Load_Cell_Data_PS_1 = ADC1_Read(1);
MOVS	R0, #1
BL	_ADC1_Read+0
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1+0)
STRH	R0, [R1, #0]
;Drip_Test.c,131 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_working62:
SUBS	R7, R7, #1
BNE	L_working62
NOP
NOP
NOP
;Drip_Test.c,132 :: 		if (Load_Cell_Data_PS_1 < loadcell_thresold)
MOVW	R0, #lo_addr(_loadcell_thresold+0)
MOVT	R0, #hi_addr(_loadcell_thresold+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1+0)
LDRH	R0, [R0, #0]
CMP	R0, R1
IT	CS
BCS	L_working64
;Drip_Test.c,134 :: 		PS1_flag = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,135 :: 		}
L_working64:
;Drip_Test.c,136 :: 		}
IT	AL
BAL	L_working60
L_working61:
;Drip_Test.c,137 :: 		PS1_flag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,138 :: 		Glass_Detected_PS1();
BL	_Glass_Detected_PS1+0
;Drip_Test.c,139 :: 		PR_ST1_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,140 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working65:
SUBS	R7, R7, #1
BNE	L_working65
NOP
NOP
NOP
;Drip_Test.c,141 :: 		PR_ST1_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,142 :: 		success();
BL	_success+0
;Drip_Test.c,143 :: 		}
IT	AL
BAL	L_working67
L_working55:
;Drip_Test.c,144 :: 		else if ((strcmp(receive, "*P1D2S1~") == 0))
MOVW	R0, #lo_addr(?lstr10_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr10_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working68
;Drip_Test.c,146 :: 		while (PR_ST1_IR == 1)
L_working69:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	EQ
BEQ	L_working70
;Drip_Test.c,148 :: 		UART1_Write_Text(PR_ST1_Wait);
MOVW	R0, #lo_addr(_PR_ST1_Wait+0)
MOVT	R0, #hi_addr(_PR_ST1_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,149 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,150 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,151 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working71:
SUBS	R7, R7, #1
BNE	L_working71
NOP
NOP
NOP
;Drip_Test.c,152 :: 		}
IT	AL
BAL	L_working69
L_working70:
;Drip_Test.c,153 :: 		UART1_Write_Text("Object Detected...\n\r");
MOVW	R0, #lo_addr(?lstr11_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr11_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,154 :: 		while(PS1_flag == 0)
L_working73:
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_working74
;Drip_Test.c,156 :: 		Load_Cell_Data_PS_1 = ADC1_Read(1);
MOVS	R0, #1
BL	_ADC1_Read+0
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1+0)
STRH	R0, [R1, #0]
;Drip_Test.c,157 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_working75:
SUBS	R7, R7, #1
BNE	L_working75
NOP
NOP
NOP
;Drip_Test.c,158 :: 		if (Load_Cell_Data_PS_1 < loadcell_thresold)
MOVW	R0, #lo_addr(_loadcell_thresold+0)
MOVT	R0, #hi_addr(_loadcell_thresold+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1+0)
LDRH	R0, [R0, #0]
CMP	R0, R1
IT	CS
BCS	L_working77
;Drip_Test.c,160 :: 		PS1_flag = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,161 :: 		}
L_working77:
;Drip_Test.c,162 :: 		}
IT	AL
BAL	L_working73
L_working74:
;Drip_Test.c,163 :: 		PS1_flag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,164 :: 		Glass_Detected_PS1();
BL	_Glass_Detected_PS1+0
;Drip_Test.c,165 :: 		PR_ST1_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,166 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working78:
SUBS	R7, R7, #1
BNE	L_working78
NOP
NOP
NOP
;Drip_Test.c,167 :: 		PR_ST1_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,168 :: 		PR_ST1_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,169 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working80:
SUBS	R7, R7, #1
BNE	L_working80
NOP
NOP
NOP
;Drip_Test.c,170 :: 		PR_ST1_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,171 :: 		success();
BL	_success+0
;Drip_Test.c,172 :: 		}
IT	AL
BAL	L_working82
L_working68:
;Drip_Test.c,174 :: 		else if ((strcmp(receive, "*P1D3S0~") == 0))
MOVW	R0, #lo_addr(?lstr12_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr12_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working83
;Drip_Test.c,176 :: 		while (PR_ST1_IR == 1)
L_working84:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	EQ
BEQ	L_working85
;Drip_Test.c,178 :: 		UART1_Write_Text(PR_ST1_Wait);
MOVW	R0, #lo_addr(_PR_ST1_Wait+0)
MOVT	R0, #hi_addr(_PR_ST1_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,179 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,180 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,181 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working86:
SUBS	R7, R7, #1
BNE	L_working86
NOP
NOP
NOP
;Drip_Test.c,182 :: 		}
IT	AL
BAL	L_working84
L_working85:
;Drip_Test.c,183 :: 		UART1_Write_Text("Object Detected...\n\r");
MOVW	R0, #lo_addr(?lstr13_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr13_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,184 :: 		while(PS1_flag == 0)
L_working88:
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_working89
;Drip_Test.c,186 :: 		Load_Cell_Data_PS_1 = ADC1_Read(1);
MOVS	R0, #1
BL	_ADC1_Read+0
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1+0)
STRH	R0, [R1, #0]
;Drip_Test.c,187 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_working90:
SUBS	R7, R7, #1
BNE	L_working90
NOP
NOP
NOP
;Drip_Test.c,188 :: 		if (Load_Cell_Data_PS_1 < loadcell_thresold)
MOVW	R0, #lo_addr(_loadcell_thresold+0)
MOVT	R0, #hi_addr(_loadcell_thresold+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1+0)
LDRH	R0, [R0, #0]
CMP	R0, R1
IT	CS
BCS	L_working92
;Drip_Test.c,190 :: 		PS1_flag = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,191 :: 		}
L_working92:
;Drip_Test.c,192 :: 		}
IT	AL
BAL	L_working88
L_working89:
;Drip_Test.c,193 :: 		PS1_flag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,194 :: 		Glass_Detected_PS1();
BL	_Glass_Detected_PS1+0
;Drip_Test.c,195 :: 		PR_ST1_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,196 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working93:
SUBS	R7, R7, #1
BNE	L_working93
NOP
NOP
NOP
;Drip_Test.c,197 :: 		PR_ST1_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,198 :: 		success();
BL	_success+0
;Drip_Test.c,199 :: 		}
IT	AL
BAL	L_working95
L_working83:
;Drip_Test.c,200 :: 		else if ((strcmp(receive, "*P1D3S1~") == 0))
MOVW	R0, #lo_addr(?lstr14_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr14_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working96
;Drip_Test.c,202 :: 		while (PR_ST1_IR == 1)
L_working97:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	EQ
BEQ	L_working98
;Drip_Test.c,204 :: 		UART1_Write_Text(PR_ST1_Wait);
MOVW	R0, #lo_addr(_PR_ST1_Wait+0)
MOVT	R0, #hi_addr(_PR_ST1_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,205 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,206 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,207 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working99:
SUBS	R7, R7, #1
BNE	L_working99
NOP
NOP
NOP
;Drip_Test.c,208 :: 		}
IT	AL
BAL	L_working97
L_working98:
;Drip_Test.c,209 :: 		UART1_Write_Text("Object Detected...\n\r");
MOVW	R0, #lo_addr(?lstr15_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr15_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,210 :: 		while(PS1_flag == 0)
L_working101:
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_working102
;Drip_Test.c,212 :: 		Load_Cell_Data_PS_1 = ADC1_Read(1);
MOVS	R0, #1
BL	_ADC1_Read+0
MOVW	R1, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R1, #hi_addr(_Load_Cell_Data_PS_1+0)
STRH	R0, [R1, #0]
;Drip_Test.c,213 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_working103:
SUBS	R7, R7, #1
BNE	L_working103
NOP
NOP
NOP
;Drip_Test.c,214 :: 		if (Load_Cell_Data_PS_1 < loadcell_thresold)
MOVW	R0, #lo_addr(_loadcell_thresold+0)
MOVT	R0, #hi_addr(_loadcell_thresold+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Load_Cell_Data_PS_1+0)
MOVT	R0, #hi_addr(_Load_Cell_Data_PS_1+0)
LDRH	R0, [R0, #0]
CMP	R0, R1
IT	CS
BCS	L_working105
;Drip_Test.c,216 :: 		PS1_flag = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,217 :: 		}
L_working105:
;Drip_Test.c,218 :: 		}
IT	AL
BAL	L_working101
L_working102:
;Drip_Test.c,219 :: 		PS1_flag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PS1_flag+0)
MOVT	R0, #hi_addr(_PS1_flag+0)
STRB	R1, [R0, #0]
;Drip_Test.c,220 :: 		Glass_Detected_PS1();
BL	_Glass_Detected_PS1+0
;Drip_Test.c,221 :: 		PR_ST1_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,222 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working106:
SUBS	R7, R7, #1
BNE	L_working106
NOP
NOP
NOP
;Drip_Test.c,223 :: 		PR_ST1_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,224 :: 		PR_ST1_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,225 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working108:
SUBS	R7, R7, #1
BNE	L_working108
NOP
NOP
NOP
;Drip_Test.c,226 :: 		PR_ST1_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,227 :: 		success();
BL	_success+0
;Drip_Test.c,228 :: 		}
L_working96:
L_working95:
L_working82:
L_working67:
L_working54:
L_working39:
;Drip_Test.c,232 :: 		if((strcmp(receive, "*P2D1S0~") == 0))
MOVW	R0, #lo_addr(?lstr16_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr16_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working110
;Drip_Test.c,234 :: 		while (PR_ST2_IR == 0)
L_working111:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working112
;Drip_Test.c,236 :: 		UART1_Write_Text(PR_ST2_Wait);
MOVW	R0, #lo_addr(_PR_ST2_Wait+0)
MOVT	R0, #hi_addr(_PR_ST2_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,237 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,238 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,239 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working113:
SUBS	R7, R7, #1
BNE	L_working113
NOP
NOP
NOP
;Drip_Test.c,240 :: 		}
IT	AL
BAL	L_working111
L_working112:
;Drip_Test.c,241 :: 		Glass_Detected_PS2();
BL	_Glass_Detected_PS2+0
;Drip_Test.c,242 :: 		PR_ST2_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,243 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working115:
SUBS	R7, R7, #1
BNE	L_working115
NOP
NOP
NOP
;Drip_Test.c,244 :: 		PR_ST2_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,245 :: 		success();
BL	_success+0
;Drip_Test.c,246 :: 		}
IT	AL
BAL	L_working117
L_working110:
;Drip_Test.c,247 :: 		else if ((strcmp(receive, "*P2D1S1~") == 0))
MOVW	R0, #lo_addr(?lstr17_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr17_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working118
;Drip_Test.c,249 :: 		while (PR_ST2_IR == 0)
L_working119:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working120
;Drip_Test.c,251 :: 		UART1_Write_Text(PR_ST2_Wait);
MOVW	R0, #lo_addr(_PR_ST2_Wait+0)
MOVT	R0, #hi_addr(_PR_ST2_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,252 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,253 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,254 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working121:
SUBS	R7, R7, #1
BNE	L_working121
NOP
NOP
NOP
;Drip_Test.c,255 :: 		}
IT	AL
BAL	L_working119
L_working120:
;Drip_Test.c,256 :: 		Glass_Detected_PS2();
BL	_Glass_Detected_PS2+0
;Drip_Test.c,257 :: 		PR_ST2_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,258 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working123:
SUBS	R7, R7, #1
BNE	L_working123
NOP
NOP
NOP
;Drip_Test.c,259 :: 		PR_ST2_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,260 :: 		PR_ST2_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,261 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working125:
SUBS	R7, R7, #1
BNE	L_working125
NOP
NOP
NOP
;Drip_Test.c,262 :: 		PR_ST2_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,263 :: 		success();
BL	_success+0
;Drip_Test.c,264 :: 		}
IT	AL
BAL	L_working127
L_working118:
;Drip_Test.c,266 :: 		else if ((strcmp(receive, "*P2D2S0~") == 0))
MOVW	R0, #lo_addr(?lstr18_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr18_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working128
;Drip_Test.c,268 :: 		while (PR_ST2_IR == 0)
L_working129:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working130
;Drip_Test.c,270 :: 		UART1_Write_Text(PR_ST2_Wait);
MOVW	R0, #lo_addr(_PR_ST2_Wait+0)
MOVT	R0, #hi_addr(_PR_ST2_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,272 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,273 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working131:
SUBS	R7, R7, #1
BNE	L_working131
NOP
NOP
NOP
;Drip_Test.c,274 :: 		}
IT	AL
BAL	L_working129
L_working130:
;Drip_Test.c,275 :: 		Glass_Detected_PS2();
BL	_Glass_Detected_PS2+0
;Drip_Test.c,276 :: 		PR_ST2_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,277 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working133:
SUBS	R7, R7, #1
BNE	L_working133
NOP
NOP
NOP
;Drip_Test.c,278 :: 		PR_ST2_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,279 :: 		success();
BL	_success+0
;Drip_Test.c,280 :: 		}
IT	AL
BAL	L_working135
L_working128:
;Drip_Test.c,281 :: 		else if ((strcmp(receive, "*P2D2S1~") == 0))
MOVW	R0, #lo_addr(?lstr19_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr19_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working136
;Drip_Test.c,283 :: 		while (PR_ST2_IR == 0)
L_working137:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working138
;Drip_Test.c,285 :: 		UART1_Write_Text(PR_ST2_Wait);
MOVW	R0, #lo_addr(_PR_ST2_Wait+0)
MOVT	R0, #hi_addr(_PR_ST2_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,286 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,287 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,288 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working139:
SUBS	R7, R7, #1
BNE	L_working139
NOP
NOP
NOP
;Drip_Test.c,289 :: 		}
IT	AL
BAL	L_working137
L_working138:
;Drip_Test.c,290 :: 		Glass_Detected_PS2();
BL	_Glass_Detected_PS2+0
;Drip_Test.c,291 :: 		PR_ST2_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,292 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working141:
SUBS	R7, R7, #1
BNE	L_working141
NOP
NOP
NOP
;Drip_Test.c,293 :: 		PR_ST2_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,294 :: 		PR_ST2_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,295 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working143:
SUBS	R7, R7, #1
BNE	L_working143
NOP
NOP
NOP
;Drip_Test.c,296 :: 		PR_ST2_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,297 :: 		success();
BL	_success+0
;Drip_Test.c,298 :: 		}
IT	AL
BAL	L_working145
L_working136:
;Drip_Test.c,300 :: 		else if ((strcmp(receive, "*P2D3S0~") == 0))
MOVW	R0, #lo_addr(?lstr20_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr20_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working146
;Drip_Test.c,302 :: 		while (PR_ST2_IR == 0)
L_working147:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working148
;Drip_Test.c,304 :: 		UART1_Write_Text(PR_ST2_Wait);
MOVW	R0, #lo_addr(_PR_ST2_Wait+0)
MOVT	R0, #hi_addr(_PR_ST2_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,305 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,306 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,307 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working149:
SUBS	R7, R7, #1
BNE	L_working149
NOP
NOP
NOP
;Drip_Test.c,308 :: 		}
IT	AL
BAL	L_working147
L_working148:
;Drip_Test.c,309 :: 		Glass_Detected_PS2();
BL	_Glass_Detected_PS2+0
;Drip_Test.c,310 :: 		PR_ST2_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,311 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working151:
SUBS	R7, R7, #1
BNE	L_working151
NOP
NOP
NOP
;Drip_Test.c,312 :: 		PR_ST2_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,313 :: 		success();
BL	_success+0
;Drip_Test.c,314 :: 		}
IT	AL
BAL	L_working153
L_working146:
;Drip_Test.c,315 :: 		else if ((strcmp(receive, "*P2D3S1~") == 0))
MOVW	R0, #lo_addr(?lstr21_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr21_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working154
;Drip_Test.c,317 :: 		while (PR_ST2_IR == 0)
L_working155:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working156
;Drip_Test.c,319 :: 		UART1_Write_Text(PR_ST2_Wait);
MOVW	R0, #lo_addr(_PR_ST2_Wait+0)
MOVT	R0, #hi_addr(_PR_ST2_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,320 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,321 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,322 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working157:
SUBS	R7, R7, #1
BNE	L_working157
NOP
NOP
NOP
;Drip_Test.c,323 :: 		}
IT	AL
BAL	L_working155
L_working156:
;Drip_Test.c,324 :: 		Glass_Detected_PS2();
BL	_Glass_Detected_PS2+0
;Drip_Test.c,325 :: 		PR_ST2_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,326 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working159:
SUBS	R7, R7, #1
BNE	L_working159
NOP
NOP
NOP
;Drip_Test.c,327 :: 		PR_ST2_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,328 :: 		PR_ST2_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,329 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working161:
SUBS	R7, R7, #1
BNE	L_working161
NOP
NOP
NOP
;Drip_Test.c,330 :: 		PR_ST2_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOA_ODR+0)
MOVT	R0, #hi_addr(GPIOA_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,331 :: 		success();
BL	_success+0
;Drip_Test.c,332 :: 		}
L_working154:
L_working153:
L_working145:
L_working135:
L_working127:
L_working117:
;Drip_Test.c,335 :: 		if((strcmp(receive, "*P3D1S0~") == 0))
MOVW	R0, #lo_addr(?lstr22_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr22_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working163
;Drip_Test.c,337 :: 		while (PR_ST3_IR == 0)
L_working164:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working165
;Drip_Test.c,339 :: 		UART1_Write_Text(PR_ST3_Wait);
MOVW	R0, #lo_addr(_PR_ST3_Wait+0)
MOVT	R0, #hi_addr(_PR_ST3_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,340 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,341 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,342 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working166:
SUBS	R7, R7, #1
BNE	L_working166
NOP
NOP
NOP
;Drip_Test.c,343 :: 		}
IT	AL
BAL	L_working164
L_working165:
;Drip_Test.c,344 :: 		Glass_Detected_PS3();
BL	_Glass_Detected_PS3+0
;Drip_Test.c,345 :: 		PR_ST3_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,346 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working168:
SUBS	R7, R7, #1
BNE	L_working168
NOP
NOP
NOP
;Drip_Test.c,347 :: 		PR_ST3_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,348 :: 		success();
BL	_success+0
;Drip_Test.c,349 :: 		}
IT	AL
BAL	L_working170
L_working163:
;Drip_Test.c,350 :: 		else if ((strcmp(receive, "*P3D1S1~") == 0))
MOVW	R0, #lo_addr(?lstr23_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr23_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working171
;Drip_Test.c,352 :: 		while (PR_ST3_IR == 0)
L_working172:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working173
;Drip_Test.c,354 :: 		UART1_Write_Text(PR_ST3_Wait);
MOVW	R0, #lo_addr(_PR_ST3_Wait+0)
MOVT	R0, #hi_addr(_PR_ST3_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,355 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,356 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,357 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working174:
SUBS	R7, R7, #1
BNE	L_working174
NOP
NOP
NOP
;Drip_Test.c,358 :: 		}
IT	AL
BAL	L_working172
L_working173:
;Drip_Test.c,359 :: 		Glass_Detected_PS3();
BL	_Glass_Detected_PS3+0
;Drip_Test.c,360 :: 		PR_ST3_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,361 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working176:
SUBS	R7, R7, #1
BNE	L_working176
NOP
NOP
NOP
;Drip_Test.c,362 :: 		PR_ST3_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,363 :: 		PR_ST3_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,364 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working178:
SUBS	R7, R7, #1
BNE	L_working178
NOP
NOP
NOP
;Drip_Test.c,365 :: 		PR_ST3_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,366 :: 		success();
BL	_success+0
;Drip_Test.c,367 :: 		}
IT	AL
BAL	L_working180
L_working171:
;Drip_Test.c,369 :: 		else if ((strcmp(receive, "*P3D2S0~") == 0))
MOVW	R0, #lo_addr(?lstr24_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr24_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working181
;Drip_Test.c,371 :: 		while (PR_ST3_IR == 0)
L_working182:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working183
;Drip_Test.c,373 :: 		UART1_Write_Text(PR_ST3_Wait);
MOVW	R0, #lo_addr(_PR_ST3_Wait+0)
MOVT	R0, #hi_addr(_PR_ST3_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,375 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,376 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working184:
SUBS	R7, R7, #1
BNE	L_working184
NOP
NOP
NOP
;Drip_Test.c,377 :: 		}
IT	AL
BAL	L_working182
L_working183:
;Drip_Test.c,378 :: 		Glass_Detected_PS3();
BL	_Glass_Detected_PS3+0
;Drip_Test.c,379 :: 		PR_ST3_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,380 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working186:
SUBS	R7, R7, #1
BNE	L_working186
NOP
NOP
NOP
;Drip_Test.c,381 :: 		PR_ST3_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,382 :: 		success();
BL	_success+0
;Drip_Test.c,383 :: 		}
IT	AL
BAL	L_working188
L_working181:
;Drip_Test.c,384 :: 		else if ((strcmp(receive, "*P3D2S1~") == 0))
MOVW	R0, #lo_addr(?lstr25_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr25_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working189
;Drip_Test.c,386 :: 		while (PR_ST3_IR == 0)
L_working190:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working191
;Drip_Test.c,388 :: 		UART1_Write_Text(PR_ST3_Wait);
MOVW	R0, #lo_addr(_PR_ST3_Wait+0)
MOVT	R0, #hi_addr(_PR_ST3_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,389 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,390 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,391 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working192:
SUBS	R7, R7, #1
BNE	L_working192
NOP
NOP
NOP
;Drip_Test.c,392 :: 		}
IT	AL
BAL	L_working190
L_working191:
;Drip_Test.c,393 :: 		Glass_Detected_PS3();
BL	_Glass_Detected_PS3+0
;Drip_Test.c,394 :: 		PR_ST3_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,395 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working194:
SUBS	R7, R7, #1
BNE	L_working194
NOP
NOP
NOP
;Drip_Test.c,396 :: 		PR_ST3_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOC_ODR+0)
MOVT	R0, #hi_addr(GPIOC_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,397 :: 		PR_ST3_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,398 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working196:
SUBS	R7, R7, #1
BNE	L_working196
NOP
NOP
NOP
;Drip_Test.c,399 :: 		PR_ST3_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,400 :: 		success();
BL	_success+0
;Drip_Test.c,401 :: 		}
IT	AL
BAL	L_working198
L_working189:
;Drip_Test.c,403 :: 		else if ((strcmp(receive, "*P3D3S0~") == 0))
MOVW	R0, #lo_addr(?lstr26_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr26_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working199
;Drip_Test.c,405 :: 		while (PR_ST3_IR == 0)
L_working200:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working201
;Drip_Test.c,407 :: 		UART1_Write_Text(PR_ST3_Wait);
MOVW	R0, #lo_addr(_PR_ST3_Wait+0)
MOVT	R0, #hi_addr(_PR_ST3_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,408 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,409 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,410 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working202:
SUBS	R7, R7, #1
BNE	L_working202
NOP
NOP
NOP
;Drip_Test.c,411 :: 		}
IT	AL
BAL	L_working200
L_working201:
;Drip_Test.c,412 :: 		Glass_Detected_PS3();
BL	_Glass_Detected_PS3+0
;Drip_Test.c,413 :: 		PR_ST3_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,414 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working204:
SUBS	R7, R7, #1
BNE	L_working204
NOP
NOP
NOP
;Drip_Test.c,415 :: 		PR_ST3_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,416 :: 		success();
BL	_success+0
;Drip_Test.c,417 :: 		}
IT	AL
BAL	L_working206
L_working199:
;Drip_Test.c,418 :: 		else if ((strcmp(receive, "*P3D3S1~") == 0))
MOVW	R0, #lo_addr(?lstr27_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr27_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working207
;Drip_Test.c,420 :: 		while (PR_ST3_IR == 0)
L_working208:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working209
;Drip_Test.c,422 :: 		UART1_Write_Text(PR_ST3_Wait);
MOVW	R0, #lo_addr(_PR_ST3_Wait+0)
MOVT	R0, #hi_addr(_PR_ST3_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,423 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,424 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,425 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working210:
SUBS	R7, R7, #1
BNE	L_working210
NOP
NOP
NOP
;Drip_Test.c,426 :: 		}
IT	AL
BAL	L_working208
L_working209:
;Drip_Test.c,427 :: 		Glass_Detected_PS3();
BL	_Glass_Detected_PS3+0
;Drip_Test.c,428 :: 		PR_ST3_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,429 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working212:
SUBS	R7, R7, #1
BNE	L_working212
NOP
NOP
NOP
;Drip_Test.c,430 :: 		PR_ST3_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,431 :: 		PR_ST3_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,432 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working214:
SUBS	R7, R7, #1
BNE	L_working214
NOP
NOP
NOP
;Drip_Test.c,433 :: 		PR_ST3_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,434 :: 		success();
BL	_success+0
;Drip_Test.c,435 :: 		}
L_working207:
L_working206:
L_working198:
L_working188:
L_working180:
L_working170:
;Drip_Test.c,439 :: 		if((strcmp(receive, "*P4D1S0~") == 0))
MOVW	R0, #lo_addr(?lstr28_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr28_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working216
;Drip_Test.c,441 :: 		while (PR_ST4_IR == 0)
L_working217:
MOVW	R1, #lo_addr(GPIOE_IDR+0)
MOVT	R1, #hi_addr(GPIOE_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working218
;Drip_Test.c,443 :: 		UART1_Write_Text(PR_ST4_Wait);
MOVW	R0, #lo_addr(_PR_ST4_Wait+0)
MOVT	R0, #hi_addr(_PR_ST4_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,444 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,445 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,446 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working219:
SUBS	R7, R7, #1
BNE	L_working219
NOP
NOP
NOP
;Drip_Test.c,447 :: 		}
IT	AL
BAL	L_working217
L_working218:
;Drip_Test.c,448 :: 		Glass_Detected_PS4();
BL	_Glass_Detected_PS4+0
;Drip_Test.c,449 :: 		PR_ST4_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,450 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working221:
SUBS	R7, R7, #1
BNE	L_working221
NOP
NOP
NOP
;Drip_Test.c,451 :: 		PR_ST4_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,452 :: 		success();
BL	_success+0
;Drip_Test.c,453 :: 		}
IT	AL
BAL	L_working223
L_working216:
;Drip_Test.c,454 :: 		else if ((strcmp(receive, "*P4D1S1~") == 0))
MOVW	R0, #lo_addr(?lstr29_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr29_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working224
;Drip_Test.c,456 :: 		while (PR_ST4_IR == 0)
L_working225:
MOVW	R1, #lo_addr(GPIOE_IDR+0)
MOVT	R1, #hi_addr(GPIOE_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working226
;Drip_Test.c,458 :: 		UART1_Write_Text(PR_ST4_Wait);
MOVW	R0, #lo_addr(_PR_ST4_Wait+0)
MOVT	R0, #hi_addr(_PR_ST4_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,459 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,460 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,461 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working227:
SUBS	R7, R7, #1
BNE	L_working227
NOP
NOP
NOP
;Drip_Test.c,462 :: 		}
IT	AL
BAL	L_working225
L_working226:
;Drip_Test.c,463 :: 		Glass_Detected_PS4();
BL	_Glass_Detected_PS4+0
;Drip_Test.c,464 :: 		PR_ST4_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,465 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working229:
SUBS	R7, R7, #1
BNE	L_working229
NOP
NOP
NOP
;Drip_Test.c,466 :: 		PR_ST4_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,467 :: 		PR_ST4_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,468 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working231:
SUBS	R7, R7, #1
BNE	L_working231
NOP
NOP
NOP
;Drip_Test.c,469 :: 		PR_ST4_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,470 :: 		success();
BL	_success+0
;Drip_Test.c,471 :: 		}
IT	AL
BAL	L_working233
L_working224:
;Drip_Test.c,473 :: 		else if ((strcmp(receive, "*P4D2S0~") == 0))
MOVW	R0, #lo_addr(?lstr30_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr30_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working234
;Drip_Test.c,475 :: 		while (PR_ST4_IR == 0)
L_working235:
MOVW	R1, #lo_addr(GPIOE_IDR+0)
MOVT	R1, #hi_addr(GPIOE_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working236
;Drip_Test.c,477 :: 		UART1_Write_Text(PR_ST4_Wait);
MOVW	R0, #lo_addr(_PR_ST4_Wait+0)
MOVT	R0, #hi_addr(_PR_ST4_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,478 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,479 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,480 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working237:
SUBS	R7, R7, #1
BNE	L_working237
NOP
NOP
NOP
;Drip_Test.c,481 :: 		}
IT	AL
BAL	L_working235
L_working236:
;Drip_Test.c,482 :: 		Glass_Detected_PS4();
BL	_Glass_Detected_PS4+0
;Drip_Test.c,483 :: 		PR_ST4_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,484 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working239:
SUBS	R7, R7, #1
BNE	L_working239
NOP
NOP
NOP
;Drip_Test.c,485 :: 		PR_ST4_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,486 :: 		success();
BL	_success+0
;Drip_Test.c,487 :: 		}
IT	AL
BAL	L_working241
L_working234:
;Drip_Test.c,488 :: 		else if ((strcmp(receive, "*P4D2S1~") == 0))
MOVW	R0, #lo_addr(?lstr31_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr31_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working242
;Drip_Test.c,490 :: 		while (PR_ST4_IR == 0)
L_working243:
MOVW	R1, #lo_addr(GPIOE_IDR+0)
MOVT	R1, #hi_addr(GPIOE_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working244
;Drip_Test.c,492 :: 		UART1_Write_Text(PR_ST4_Wait);
MOVW	R0, #lo_addr(_PR_ST4_Wait+0)
MOVT	R0, #hi_addr(_PR_ST4_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,493 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,494 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,495 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working245:
SUBS	R7, R7, #1
BNE	L_working245
NOP
NOP
NOP
;Drip_Test.c,496 :: 		}
IT	AL
BAL	L_working243
L_working244:
;Drip_Test.c,497 :: 		Glass_Detected_PS4();
BL	_Glass_Detected_PS4+0
;Drip_Test.c,498 :: 		PR_ST4_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,499 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working247:
SUBS	R7, R7, #1
BNE	L_working247
NOP
NOP
NOP
;Drip_Test.c,500 :: 		PR_ST4_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,501 :: 		PR_ST4_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,502 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working249:
SUBS	R7, R7, #1
BNE	L_working249
NOP
NOP
NOP
;Drip_Test.c,503 :: 		PR_ST4_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,504 :: 		success();
BL	_success+0
;Drip_Test.c,505 :: 		}
IT	AL
BAL	L_working251
L_working242:
;Drip_Test.c,507 :: 		else if ((strcmp(receive, "*P4D3S0~") == 0))
MOVW	R0, #lo_addr(?lstr32_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr32_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working252
;Drip_Test.c,509 :: 		while (PR_ST4_IR == 0)
L_working253:
MOVW	R1, #lo_addr(GPIOE_IDR+0)
MOVT	R1, #hi_addr(GPIOE_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working254
;Drip_Test.c,511 :: 		UART1_Write_Text(PR_ST4_Wait);
MOVW	R0, #lo_addr(_PR_ST4_Wait+0)
MOVT	R0, #hi_addr(_PR_ST4_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,512 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,513 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,514 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working255:
SUBS	R7, R7, #1
BNE	L_working255
NOP
NOP
NOP
;Drip_Test.c,515 :: 		}
IT	AL
BAL	L_working253
L_working254:
;Drip_Test.c,516 :: 		Glass_Detected_PS4();
BL	_Glass_Detected_PS4+0
;Drip_Test.c,517 :: 		PR_ST4_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,518 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working257:
SUBS	R7, R7, #1
BNE	L_working257
NOP
NOP
NOP
;Drip_Test.c,519 :: 		PR_ST4_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,520 :: 		success();
BL	_success+0
;Drip_Test.c,521 :: 		}
IT	AL
BAL	L_working259
L_working252:
;Drip_Test.c,522 :: 		else if ((strcmp(receive, "*P4D3S1~") == 0))
MOVW	R0, #lo_addr(?lstr33_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr33_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working260
;Drip_Test.c,524 :: 		while (PR_ST4_IR == 0)
L_working261:
MOVW	R1, #lo_addr(GPIOE_IDR+0)
MOVT	R1, #hi_addr(GPIOE_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working262
;Drip_Test.c,526 :: 		UART1_Write_Text(PR_ST4_Wait);
MOVW	R0, #lo_addr(_PR_ST4_Wait+0)
MOVT	R0, #hi_addr(_PR_ST4_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,527 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,528 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,529 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working263:
SUBS	R7, R7, #1
BNE	L_working263
NOP
NOP
NOP
;Drip_Test.c,530 :: 		}
IT	AL
BAL	L_working261
L_working262:
;Drip_Test.c,531 :: 		Glass_Detected_PS4();
BL	_Glass_Detected_PS4+0
;Drip_Test.c,532 :: 		PR_ST4_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,533 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working265:
SUBS	R7, R7, #1
BNE	L_working265
NOP
NOP
NOP
;Drip_Test.c,534 :: 		PR_ST4_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,535 :: 		PR_ST4_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,536 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working267:
SUBS	R7, R7, #1
BNE	L_working267
NOP
NOP
NOP
;Drip_Test.c,537 :: 		PR_ST4_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOB_ODR+0)
MOVT	R0, #hi_addr(GPIOB_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,538 :: 		success();
BL	_success+0
;Drip_Test.c,539 :: 		}
L_working260:
L_working259:
L_working251:
L_working241:
L_working233:
L_working223:
;Drip_Test.c,544 :: 		if((strcmp(receive, "*P5D1S0~") == 0))
MOVW	R0, #lo_addr(?lstr34_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr34_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working269
;Drip_Test.c,546 :: 		while (PR_ST5_IR == 0)
L_working270:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working271
;Drip_Test.c,548 :: 		UART1_Write_Text(PR_ST5_Wait);
MOVW	R0, #lo_addr(_PR_ST5_Wait+0)
MOVT	R0, #hi_addr(_PR_ST5_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,549 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,550 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,551 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working272:
SUBS	R7, R7, #1
BNE	L_working272
NOP
NOP
NOP
;Drip_Test.c,552 :: 		}
IT	AL
BAL	L_working270
L_working271:
;Drip_Test.c,553 :: 		Glass_Detected_PS5();
BL	_Glass_Detected_PS5+0
;Drip_Test.c,554 :: 		PR_ST5_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,555 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working274:
SUBS	R7, R7, #1
BNE	L_working274
NOP
NOP
NOP
;Drip_Test.c,556 :: 		PR_ST5_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,557 :: 		success();
BL	_success+0
;Drip_Test.c,558 :: 		}
IT	AL
BAL	L_working276
L_working269:
;Drip_Test.c,559 :: 		else if ((strcmp(receive, "*P5D1S1~") == 0))
MOVW	R0, #lo_addr(?lstr35_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr35_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working277
;Drip_Test.c,561 :: 		while (PR_ST5_IR == 0)
L_working278:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working279
;Drip_Test.c,563 :: 		UART1_Write_Text(PR_ST5_Wait);
MOVW	R0, #lo_addr(_PR_ST5_Wait+0)
MOVT	R0, #hi_addr(_PR_ST5_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,564 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,565 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,566 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working280:
SUBS	R7, R7, #1
BNE	L_working280
NOP
NOP
NOP
;Drip_Test.c,567 :: 		}
IT	AL
BAL	L_working278
L_working279:
;Drip_Test.c,568 :: 		Glass_Detected_PS5();
BL	_Glass_Detected_PS5+0
;Drip_Test.c,569 :: 		PR_ST5_NZ1 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,570 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working282:
SUBS	R7, R7, #1
BNE	L_working282
NOP
NOP
NOP
;Drip_Test.c,571 :: 		PR_ST5_NZ1 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,572 :: 		PR_ST5_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,573 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working284:
SUBS	R7, R7, #1
BNE	L_working284
NOP
NOP
NOP
;Drip_Test.c,574 :: 		PR_ST5_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,575 :: 		success();
BL	_success+0
;Drip_Test.c,576 :: 		}
IT	AL
BAL	L_working286
L_working277:
;Drip_Test.c,578 :: 		else if ((strcmp(receive, "*P5D2S0~") == 0))
MOVW	R0, #lo_addr(?lstr36_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr36_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working287
;Drip_Test.c,580 :: 		while (PR_ST5_IR == 0)
L_working288:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working289
;Drip_Test.c,582 :: 		UART1_Write_Text(PR_ST5_Wait);
MOVW	R0, #lo_addr(_PR_ST5_Wait+0)
MOVT	R0, #hi_addr(_PR_ST5_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,583 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,584 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,585 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working290:
SUBS	R7, R7, #1
BNE	L_working290
NOP
NOP
NOP
;Drip_Test.c,586 :: 		}
IT	AL
BAL	L_working288
L_working289:
;Drip_Test.c,587 :: 		Glass_Detected_PS5();
BL	_Glass_Detected_PS5+0
;Drip_Test.c,588 :: 		PR_ST5_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,589 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working292:
SUBS	R7, R7, #1
BNE	L_working292
NOP
NOP
NOP
;Drip_Test.c,590 :: 		PR_ST5_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,591 :: 		success();
BL	_success+0
;Drip_Test.c,592 :: 		}
IT	AL
BAL	L_working294
L_working287:
;Drip_Test.c,593 :: 		else if ((strcmp(receive, "*P5D2S1~") == 0))
MOVW	R0, #lo_addr(?lstr37_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr37_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working295
;Drip_Test.c,595 :: 		while (PR_ST5_IR == 0)
L_working296:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working297
;Drip_Test.c,597 :: 		UART1_Write_Text(PR_ST5_Wait);
MOVW	R0, #lo_addr(_PR_ST5_Wait+0)
MOVT	R0, #hi_addr(_PR_ST5_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,598 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,599 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,600 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working298:
SUBS	R7, R7, #1
BNE	L_working298
NOP
NOP
NOP
;Drip_Test.c,601 :: 		}
IT	AL
BAL	L_working296
L_working297:
;Drip_Test.c,602 :: 		Glass_Detected_PS5();
BL	_Glass_Detected_PS5+0
;Drip_Test.c,603 :: 		PR_ST5_NZ2 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,604 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working300:
SUBS	R7, R7, #1
BNE	L_working300
NOP
NOP
NOP
;Drip_Test.c,605 :: 		PR_ST5_NZ2 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,606 :: 		PR_ST5_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,607 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working302:
SUBS	R7, R7, #1
BNE	L_working302
NOP
NOP
NOP
;Drip_Test.c,608 :: 		PR_ST5_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,609 :: 		success();
BL	_success+0
;Drip_Test.c,610 :: 		}
IT	AL
BAL	L_working304
L_working295:
;Drip_Test.c,612 :: 		else if ((strcmp(receive, "*P5D3S0~") == 0))
MOVW	R0, #lo_addr(?lstr38_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr38_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working305
;Drip_Test.c,614 :: 		while (PR_ST5_IR == 0)
L_working306:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working307
;Drip_Test.c,616 :: 		UART1_Write_Text(PR_ST5_Wait);
MOVW	R0, #lo_addr(_PR_ST5_Wait+0)
MOVT	R0, #hi_addr(_PR_ST5_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,617 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,618 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,619 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working308:
SUBS	R7, R7, #1
BNE	L_working308
NOP
NOP
NOP
;Drip_Test.c,620 :: 		}
IT	AL
BAL	L_working306
L_working307:
;Drip_Test.c,621 :: 		Glass_Detected_PS5();
BL	_Glass_Detected_PS5+0
;Drip_Test.c,622 :: 		PR_ST5_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,623 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working310:
SUBS	R7, R7, #1
BNE	L_working310
NOP
NOP
NOP
;Drip_Test.c,624 :: 		PR_ST5_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,625 :: 		success();
BL	_success+0
;Drip_Test.c,626 :: 		}
IT	AL
BAL	L_working312
L_working305:
;Drip_Test.c,627 :: 		else if ((strcmp(receive, "*P5D3S1~") == 0))
MOVW	R0, #lo_addr(?lstr39_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr39_Drip_Test+0)
MOV	R1, R0
MOVW	R0, #lo_addr(_receive+0)
MOVT	R0, #hi_addr(_receive+0)
BL	_strcmp+0
CMP	R0, #0
IT	NE
BNE	L_working313
;Drip_Test.c,629 :: 		while (PR_ST5_IR == 0)
L_working314:
MOVW	R1, #lo_addr(GPIOB_IDR+0)
MOVT	R1, #hi_addr(GPIOB_IDR+0)
LDR	R0, [R1, #0]
CMP	R0, #0
IT	NE
BNE	L_working315
;Drip_Test.c,631 :: 		UART1_Write_Text(PR_ST5_Wait);
MOVW	R0, #lo_addr(_PR_ST5_Wait+0)
MOVT	R0, #hi_addr(_PR_ST5_Wait+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,632 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,633 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,634 :: 		Delay_ms(200);
MOVW	R7, #4606
MOVT	R7, #122
NOP
NOP
L_working316:
SUBS	R7, R7, #1
BNE	L_working316
NOP
NOP
NOP
;Drip_Test.c,635 :: 		}
IT	AL
BAL	L_working314
L_working315:
;Drip_Test.c,636 :: 		Glass_Detected_PS5();
BL	_Glass_Detected_PS5+0
;Drip_Test.c,637 :: 		PR_ST5_NZ3 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,638 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working318:
SUBS	R7, R7, #1
BNE	L_working318
NOP
NOP
NOP
;Drip_Test.c,639 :: 		PR_ST5_NZ3 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,640 :: 		PR_ST5_NZ4 = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,641 :: 		Delay_ms(2000);
MOVW	R7, #46078
MOVT	R7, #1220
NOP
NOP
L_working320:
SUBS	R7, R7, #1
BNE	L_working320
NOP
NOP
NOP
;Drip_Test.c,642 :: 		PR_ST5_NZ4 = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(GPIOE_ODR+0)
MOVT	R0, #hi_addr(GPIOE_ODR+0)
STR	R1, [R0, #0]
;Drip_Test.c,643 :: 		success();
BL	_success+0
;Drip_Test.c,644 :: 		}
L_working313:
L_working312:
L_working304:
L_working294:
L_working286:
L_working276:
;Drip_Test.c,647 :: 		}
L_end_working:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _working
_success:
;Drip_Test.c,650 :: 		void success()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,652 :: 		UART1_Write_Text("Pouring Complete....");
MOVW	R0, #lo_addr(?lstr40_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr40_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,653 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,654 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,655 :: 		}
L_end_success:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _success
_Glass_Detected_PS1:
;Drip_Test.c,657 :: 		void Glass_Detected_PS1()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,659 :: 		UART1_Write_Text(PR_ST1_Glass_detected);
MOVW	R0, #lo_addr(_PR_ST1_Glass_detected+0)
MOVT	R0, #hi_addr(_PR_ST1_Glass_detected+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,660 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,661 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,662 :: 		UART1_Write_Text("Pouring Started....");
MOVW	R0, #lo_addr(?lstr41_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr41_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,663 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,664 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,665 :: 		}
L_end_Glass_Detected_PS1:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Glass_Detected_PS1
_Glass_Detected_PS2:
;Drip_Test.c,666 :: 		void Glass_Detected_PS2()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,668 :: 		UART1_Write_Text(PR_ST2_Glass_detected);
MOVW	R0, #lo_addr(_PR_ST2_Glass_detected+0)
MOVT	R0, #hi_addr(_PR_ST2_Glass_detected+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,669 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,670 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,671 :: 		UART1_Write_Text("Pouring Started....");
MOVW	R0, #lo_addr(?lstr42_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr42_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,672 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,673 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,674 :: 		}
L_end_Glass_Detected_PS2:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Glass_Detected_PS2
_Glass_Detected_PS3:
;Drip_Test.c,675 :: 		void Glass_Detected_PS3()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,677 :: 		UART1_Write_Text(PR_ST3_Glass_detected);
MOVW	R0, #lo_addr(_PR_ST3_Glass_detected+0)
MOVT	R0, #hi_addr(_PR_ST3_Glass_detected+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,678 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,679 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,680 :: 		UART1_Write_Text("Pouring Started....");
MOVW	R0, #lo_addr(?lstr43_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr43_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,681 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,682 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,683 :: 		}
L_end_Glass_Detected_PS3:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Glass_Detected_PS3
_Glass_Detected_PS4:
;Drip_Test.c,684 :: 		void Glass_Detected_PS4()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,686 :: 		UART1_Write_Text(PR_ST4_Glass_detected);
MOVW	R0, #lo_addr(_PR_ST4_Glass_detected+0)
MOVT	R0, #hi_addr(_PR_ST4_Glass_detected+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,687 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,688 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,689 :: 		UART1_Write_Text("Pouring Started....");
MOVW	R0, #lo_addr(?lstr44_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr44_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,690 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,691 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,692 :: 		}
L_end_Glass_Detected_PS4:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Glass_Detected_PS4
_Glass_Detected_PS5:
;Drip_Test.c,693 :: 		void Glass_Detected_PS5()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Drip_Test.c,695 :: 		UART1_Write_Text(PR_ST5_Glass_detected);
MOVW	R0, #lo_addr(_PR_ST5_Glass_detected+0)
MOVT	R0, #hi_addr(_PR_ST5_Glass_detected+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,696 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,697 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,698 :: 		UART1_Write_Text("Pouring Started....");
MOVW	R0, #lo_addr(?lstr45_Drip_Test+0)
MOVT	R0, #hi_addr(?lstr45_Drip_Test+0)
BL	_UART1_Write_Text+0
;Drip_Test.c,699 :: 		UART1_Write(13);
MOVS	R0, #13
BL	_UART1_Write+0
;Drip_Test.c,700 :: 		UART1_Write(10);
MOVS	R0, #10
BL	_UART1_Write+0
;Drip_Test.c,701 :: 		}
L_end_Glass_Detected_PS5:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Glass_Detected_PS5
