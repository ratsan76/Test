#line 1 "E:/Office/IO Labs/Drip/Test_Code/Test/Drip_Test.c"
#line 1 "e:/office/io labs/drip/test_code/test/hardware.h"


sbit PR_ST1_NZ1 at GPIOE_ODR.B9;
sbit PR_ST1_NZ2 at GPIOE_ODR.B11;
sbit PR_ST1_NZ3 at GPIOE_ODR.B13;
sbit PR_ST1_NZ4 at GPIOE_ODR.B15;


sbit PR_ST2_NZ1 at GPIOB_ODR.B1;
sbit PR_ST2_NZ2 at GPIOA_ODR.B12;
sbit PR_ST2_NZ3 at GPIOC_ODR.B12;
sbit PR_ST2_NZ4 at GPIOA_ODR.B8;


sbit PR_ST3_NZ1 at GPIOC_ODR.B8;
sbit PR_ST3_NZ2 at GPIOC_ODR.B6;
sbit PR_ST3_NZ3 at GPIOD_ODR.B14;
sbit PR_ST3_NZ4 at GPIOD_ODR.B12;


sbit PR_ST4_NZ1 at GPIOD_ODR.B10;
sbit PR_ST4_NZ2 at GPIOD_ODR.B8;
sbit PR_ST4_NZ3 at GPIOB_ODR.B14;
sbit PR_ST4_NZ4 at GPIOB_ODR.B12;


sbit PR_ST5_NZ1 at GPIOE_ODR.B8;
sbit PR_ST5_NZ2 at GPIOE_ODR.B10;
sbit PR_ST5_NZ3 at GPIOE_ODR.B12;
sbit PR_ST5_NZ4 at GPIOE_ODR.B14;


sbit PR_ST6_NZ1 at GPIOB_ODR.B10;
sbit PR_ST6_NZ2 at GPIOC_ODR.B4;
sbit PR_ST6_NZ3 at GPIOA_ODR.B11;
sbit PR_ST6_NZ4 at GPIOD_ODR.B0;



sbit PR_ST7_NZ1 at GPIOC_ODR.B9;
sbit PR_ST7_NZ2 at GPIOC_ODR.B7;
sbit PR_ST7_NZ3 at GPIOD_ODR.B15;
sbit PR_ST7_NZ4 at GPIOD_ODR.B13;


sbit PR_ST8_NZ1 at GPIOD_ODR.B11;
sbit PR_ST8_NZ2 at GPIOD_ODR.B9;
sbit PR_ST8_NZ3 at GPIOB_ODR.B15;
sbit PR_ST8_NZ4 at GPIOB_ODR.B13;




sbit Res_Dis_1 at GPIOD_ODR.B15;
sbit Res_Dis_2 at GPIOD_ODR.B13;
sbit Res_Dis_3 at GPIOD_ODR.B11;


sbit Water_Dis_1 at GPIOD_ODR.B9;
sbit Water_Dis_2 at GPIOB_ODR.B15;
sbit Water_Dis_3 at GPIOB_ODR.B13;



sbit PR_ST4_IR at GPIOE_IDR.B0;
sbit PR_ST2_IR at GPIOB_IDR.B8;
sbit PR_ST3_IR at GPIOB_IDR.B1;






sbit PR_ST1_IR at GPIOB_IDR.B0;
sbit PR_ST5_IR at GPIOB_IDR.B2;
#line 92 "e:/office/io labs/drip/test_code/test/hardware.h"
sbit TRIG_PS1 at GPIOD_ODR.B6;
sbit ECHO_PS1 at GPIOD_IDR.B5;
float HCSR04_Number = 0.0171821;
unsigned long HCSR04_Echo_Time = 0;
float Distance = 0;
char Distance_STR[5] = "";




char test;
char receive[50] = "";
unsigned char counter,flag,flag1;
char PR_ST1_Wait[] = "Waiting at Pouring Station 1 ....";
char PR_ST2_Wait[] = "Waiting at Pouring Station 2 ....";
char PR_ST3_Wait[] = "Waiting at Pouring Station 3 ....";
char PR_ST4_Wait[] = "Waiting at Pouring Station 4 ....";
char PR_ST5_Wait[] = "Waiting at Pouring Station 5 ....";


char PR_ST1_Glass_detected[] = "Glass Detected at Pouring Station 1 ....";
char PR_ST2_Glass_detected[] = "Glass Detected at Pouring Station 2 ....";
char PR_ST3_Glass_detected[] = "Glass Detected at Pouring Station 3 ....";
char PR_ST4_Glass_detected[] = "Glass Detected at Pouring Station 4 ....";
char PR_ST5_Glass_detected[] = "Glass Detected at Pouring Station 5 ....";


void Glass_Detected_PS1();
void Glass_Detected_PS2();
void Glass_Detected_PS3();
void Glass_Detected_PS4();
void Glass_Detected_PS5();

char uart_rd;
void working();
void success();
void HCSR04_Read();

unsigned int Load_Cell_Data_PS_1, Load_Cell_Data_PS_2, Load_Cell_Data_PS_3, Load_Cell_Data_PS_4, Load_Cell_Data_PS_5;
char Load_Cell_Data_PS_1_STR[3] = "";
char Load_Cell_Data_PS_2_STR[3] = "";
char Load_Cell_Data_PS_3_STR[3] = "";
char Load_Cell_Data_PS_4_STR[3] = "";
char Load_Cell_Data_PS_5_STR[3] = "";

unsigned char PS1_flag = 0;
unsigned int loadcell_thresold = 3200;

void initialize()
{
 GPIO_Clk_Enable(&GPIOA_BASE);
 GPIO_Clk_Enable(&GPIOB_BASE);
 GPIO_Clk_Enable(&GPIOC_BASE);
 GPIO_Clk_Enable(&GPIOD_BASE);
 GPIO_Clk_Enable(&GPIOE_BASE);
 GPIO_Clk_Enable(&GPIOF_BASE);

 GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_ALL);
 GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_ALL);
 GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_ALL);
 GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_ALL);
 GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_ALL);
 GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_ALL);


 GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_0 | _GPIO_PINMASK_1 | _GPIO_PINMASK_2 | _GPIO_PINMASK_4 | _GPIO_PINMASK_6 | _GPIO_PINMASK_8 | _GPIO_PINMASK_9 );
 GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_1 | _GPIO_PINMASK_3 | _GPIO_PINMASK_5 | _GPIO_PINMASK_7);
 GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_0 | _GPIO_PINMASK_1 | _GPIO_PINMASK_7);

 ADC1_Init();
 UART1_Init_Advanced(115200, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_USART1_PA9_10);
 USART1_SRbits.RXNE = 0;
 USART1_CR1bits.RXNEIE = 1;
 NVIC_SetIntPriority(IVT_INT_USART1,3);
 NVIC_IntEnable(IVT_INT_USART1);
 EnableInterrupts();

}

void HCSR04_Read()
{
 TRIG_PS1 = 1;
 Delay_us(10);
 TRIG_PS1 = 0;
 Delay_us(1);
 while(!ECHO_PS1);

 while(ECHO_PS1)
 {
 HCSR04_Echo_Time++;
 Delay_us(1);
 }
 Distance = HCSR04_Echo_Time * HCSR04_Number;
 FloatToStr(Distance, Distance_STR);
 Delay_us(1000);
 UART1_Write_Text(Distance_STR);
 UART1_Write(13);
 UART1_Write(10);

 HCSR04_Echo_Time = 0;
}
#line 2 "E:/Office/IO Labs/Drip/Test_Code/Test/Drip_Test.c"
void USART1_RX_interrupt() iv IVT_INT_USART1 ics ICS_AUTO{

 test = UART1_Read();
 if(flag == 1)
 {

 if(test != '~')
 {
 receive[counter++] = test;
 }
 else
 {
 flag1 = 1;
 receive[counter++] = test;
 }

 }
 if (test == '*')
 {
 flag = 1;
 receive[counter++] = test;
 }
}

void main() {
 initialize();
 UART1_Write_Text("Drip Program Started...\n\r");

 while(1)
 {
 if (flag1 == 1)
 {
 counter = 0;
 flag = 0;
 flag1 = 0;
 Delay_ms(50);
 memmove(receive, receive, 1);
 working();
 UART1_Write(13);
 UART1_Write(10);
 memset(receive, '\0', sizeof(receive));
 Delay_ms(100);
 }
 UART1_Write_Text("Distance : ");
 HCSR04_Read();
 UART1_Write_Text("ADC_Data : ");
 Load_Cell_Data_PS_1 = ADC1_Read(1);
 Delay_ms(100);
 IntToStr(Load_Cell_Data_PS_1, Load_Cell_Data_PS_1_STR);
 UART1_Write_Text(Load_Cell_Data_PS_1_STR);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(300);
 }
}



void working()
{

 if((strcmp(receive, "*P1D1S0~") == 0))
 {
 while (PR_ST1_IR == 1)
 {
 UART1_Write_Text(PR_ST1_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 UART1_Write_Text("Object Detected...\n\r");
 while(PS1_flag == 0)
 {
 Load_Cell_Data_PS_1 = ADC1_Read(1);
 Delay_ms(100);
 if (Load_Cell_Data_PS_1 < loadcell_thresold)
 {
 PS1_flag = 1;
 }
 }
 PS1_flag = 0;
 Glass_Detected_PS1();
 PR_ST1_NZ1 = 1;
 Delay_ms(2000);
 PR_ST1_NZ1 = 0;
 success();
 }
 else if ((strcmp(receive, "*P1D1S1~") == 0))
 {
 while (PR_ST1_IR == 1)
 {
 UART1_Write_Text(PR_ST1_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 UART1_Write_Text("Object Detected...\n\r");
 while(PS1_flag == 0)
 {
 Load_Cell_Data_PS_1 = ADC1_Read(1);
 Delay_ms(100);
 if (Load_Cell_Data_PS_1 < loadcell_thresold)
 {
 PS1_flag = 1;
 }
 }
 PS1_flag = 0;
 Glass_Detected_PS1();
 PR_ST1_NZ1 = 1;
 Delay_ms(2000);
 PR_ST1_NZ1 = 0;
 PR_ST1_NZ4 = 1;
 Delay_ms(2000);
 PR_ST1_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P1D2S0~") == 0))
 {
 while (PR_ST1_IR == 1)
 {
 UART1_Write_Text(PR_ST1_Wait);
 UART1_Write(10);
 Delay_ms(200);
 }
 UART1_Write_Text("Object Detected...\n\r");
 while(PS1_flag == 0)
 {
 Load_Cell_Data_PS_1 = ADC1_Read(1);
 Delay_ms(100);
 if (Load_Cell_Data_PS_1 < loadcell_thresold)
 {
 PS1_flag = 1;
 }
 }
 PS1_flag = 0;
 Glass_Detected_PS1();
 PR_ST1_NZ2 = 1;
 Delay_ms(2000);
 PR_ST1_NZ2 = 0;
 success();
 }
 else if ((strcmp(receive, "*P1D2S1~") == 0))
 {
 while (PR_ST1_IR == 1)
 {
 UART1_Write_Text(PR_ST1_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 UART1_Write_Text("Object Detected...\n\r");
 while(PS1_flag == 0)
 {
 Load_Cell_Data_PS_1 = ADC1_Read(1);
 Delay_ms(100);
 if (Load_Cell_Data_PS_1 < loadcell_thresold)
 {
 PS1_flag = 1;
 }
 }
 PS1_flag = 0;
 Glass_Detected_PS1();
 PR_ST1_NZ2 = 1;
 Delay_ms(2000);
 PR_ST1_NZ2 = 0;
 PR_ST1_NZ4 = 1;
 Delay_ms(2000);
 PR_ST1_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P1D3S0~") == 0))
 {
 while (PR_ST1_IR == 1)
 {
 UART1_Write_Text(PR_ST1_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 UART1_Write_Text("Object Detected...\n\r");
 while(PS1_flag == 0)
 {
 Load_Cell_Data_PS_1 = ADC1_Read(1);
 Delay_ms(100);
 if (Load_Cell_Data_PS_1 < loadcell_thresold)
 {
 PS1_flag = 1;
 }
 }
 PS1_flag = 0;
 Glass_Detected_PS1();
 PR_ST1_NZ3 = 1;
 Delay_ms(2000);
 PR_ST1_NZ3 = 0;
 success();
 }
 else if ((strcmp(receive, "*P1D3S1~") == 0))
 {
 while (PR_ST1_IR == 1)
 {
 UART1_Write_Text(PR_ST1_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 UART1_Write_Text("Object Detected...\n\r");
 while(PS1_flag == 0)
 {
 Load_Cell_Data_PS_1 = ADC1_Read(1);
 Delay_ms(100);
 if (Load_Cell_Data_PS_1 < loadcell_thresold)
 {
 PS1_flag = 1;
 }
 }
 PS1_flag = 0;
 Glass_Detected_PS1();
 PR_ST1_NZ3 = 1;
 Delay_ms(2000);
 PR_ST1_NZ3 = 0;
 PR_ST1_NZ4 = 1;
 Delay_ms(2000);
 PR_ST1_NZ4 = 0;
 success();
 }



 if((strcmp(receive, "*P2D1S0~") == 0))
 {
 while (PR_ST2_IR == 0)
 {
 UART1_Write_Text(PR_ST2_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS2();
 PR_ST2_NZ1 = 1;
 Delay_ms(2000);
 PR_ST2_NZ1 = 0;
 success();
 }
 else if ((strcmp(receive, "*P2D1S1~") == 0))
 {
 while (PR_ST2_IR == 0)
 {
 UART1_Write_Text(PR_ST2_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS2();
 PR_ST2_NZ1 = 1;
 Delay_ms(2000);
 PR_ST2_NZ1 = 0;
 PR_ST2_NZ4 = 1;
 Delay_ms(2000);
 PR_ST2_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P2D2S0~") == 0))
 {
 while (PR_ST2_IR == 0)
 {
 UART1_Write_Text(PR_ST2_Wait);

 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS2();
 PR_ST2_NZ2 = 1;
 Delay_ms(2000);
 PR_ST2_NZ2 = 0;
 success();
 }
 else if ((strcmp(receive, "*P2D2S1~") == 0))
 {
 while (PR_ST2_IR == 0)
 {
 UART1_Write_Text(PR_ST2_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS2();
 PR_ST2_NZ2 = 1;
 Delay_ms(2000);
 PR_ST2_NZ2 = 0;
 PR_ST2_NZ4 = 1;
 Delay_ms(2000);
 PR_ST2_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P2D3S0~") == 0))
 {
 while (PR_ST2_IR == 0)
 {
 UART1_Write_Text(PR_ST2_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS2();
 PR_ST2_NZ3 = 1;
 Delay_ms(2000);
 PR_ST2_NZ3 = 0;
 success();
 }
 else if ((strcmp(receive, "*P2D3S1~") == 0))
 {
 while (PR_ST2_IR == 0)
 {
 UART1_Write_Text(PR_ST2_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS2();
 PR_ST2_NZ3 = 1;
 Delay_ms(2000);
 PR_ST2_NZ3 = 0;
 PR_ST2_NZ4 = 1;
 Delay_ms(2000);
 PR_ST2_NZ4 = 0;
 success();
 }


 if((strcmp(receive, "*P3D1S0~") == 0))
 {
 while (PR_ST3_IR == 0)
 {
 UART1_Write_Text(PR_ST3_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS3();
 PR_ST3_NZ1 = 1;
 Delay_ms(2000);
 PR_ST3_NZ1 = 0;
 success();
 }
 else if ((strcmp(receive, "*P3D1S1~") == 0))
 {
 while (PR_ST3_IR == 0)
 {
 UART1_Write_Text(PR_ST3_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS3();
 PR_ST3_NZ1 = 1;
 Delay_ms(2000);
 PR_ST3_NZ1 = 0;
 PR_ST3_NZ4 = 1;
 Delay_ms(2000);
 PR_ST3_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P3D2S0~") == 0))
 {
 while (PR_ST3_IR == 0)
 {
 UART1_Write_Text(PR_ST3_Wait);

 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS3();
 PR_ST3_NZ2 = 1;
 Delay_ms(2000);
 PR_ST3_NZ2 = 0;
 success();
 }
 else if ((strcmp(receive, "*P3D2S1~") == 0))
 {
 while (PR_ST3_IR == 0)
 {
 UART1_Write_Text(PR_ST3_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS3();
 PR_ST3_NZ2 = 1;
 Delay_ms(2000);
 PR_ST3_NZ2 = 0;
 PR_ST3_NZ4 = 1;
 Delay_ms(2000);
 PR_ST3_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P3D3S0~") == 0))
 {
 while (PR_ST3_IR == 0)
 {
 UART1_Write_Text(PR_ST3_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS3();
 PR_ST3_NZ3 = 1;
 Delay_ms(2000);
 PR_ST3_NZ3 = 0;
 success();
 }
 else if ((strcmp(receive, "*P3D3S1~") == 0))
 {
 while (PR_ST3_IR == 0)
 {
 UART1_Write_Text(PR_ST3_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS3();
 PR_ST3_NZ3 = 1;
 Delay_ms(2000);
 PR_ST3_NZ3 = 0;
 PR_ST3_NZ4 = 1;
 Delay_ms(2000);
 PR_ST3_NZ4 = 0;
 success();
 }



 if((strcmp(receive, "*P4D1S0~") == 0))
 {
 while (PR_ST4_IR == 0)
 {
 UART1_Write_Text(PR_ST4_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS4();
 PR_ST4_NZ1 = 1;
 Delay_ms(2000);
 PR_ST4_NZ1 = 0;
 success();
 }
 else if ((strcmp(receive, "*P4D1S1~") == 0))
 {
 while (PR_ST4_IR == 0)
 {
 UART1_Write_Text(PR_ST4_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS4();
 PR_ST4_NZ1 = 1;
 Delay_ms(2000);
 PR_ST4_NZ1 = 0;
 PR_ST4_NZ4 = 1;
 Delay_ms(2000);
 PR_ST4_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P4D2S0~") == 0))
 {
 while (PR_ST4_IR == 0)
 {
 UART1_Write_Text(PR_ST4_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS4();
 PR_ST4_NZ2 = 1;
 Delay_ms(2000);
 PR_ST4_NZ2 = 0;
 success();
 }
 else if ((strcmp(receive, "*P4D2S1~") == 0))
 {
 while (PR_ST4_IR == 0)
 {
 UART1_Write_Text(PR_ST4_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS4();
 PR_ST4_NZ2 = 1;
 Delay_ms(2000);
 PR_ST4_NZ2 = 0;
 PR_ST4_NZ4 = 1;
 Delay_ms(2000);
 PR_ST4_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P4D3S0~") == 0))
 {
 while (PR_ST4_IR == 0)
 {
 UART1_Write_Text(PR_ST4_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS4();
 PR_ST4_NZ3 = 1;
 Delay_ms(2000);
 PR_ST4_NZ3 = 0;
 success();
 }
 else if ((strcmp(receive, "*P4D3S1~") == 0))
 {
 while (PR_ST4_IR == 0)
 {
 UART1_Write_Text(PR_ST4_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS4();
 PR_ST4_NZ3 = 1;
 Delay_ms(2000);
 PR_ST4_NZ3 = 0;
 PR_ST4_NZ4 = 1;
 Delay_ms(2000);
 PR_ST4_NZ4 = 0;
 success();
 }




 if((strcmp(receive, "*P5D1S0~") == 0))
 {
 while (PR_ST5_IR == 0)
 {
 UART1_Write_Text(PR_ST5_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS5();
 PR_ST5_NZ1 = 1;
 Delay_ms(2000);
 PR_ST5_NZ1 = 0;
 success();
 }
 else if ((strcmp(receive, "*P5D1S1~") == 0))
 {
 while (PR_ST5_IR == 0)
 {
 UART1_Write_Text(PR_ST5_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS5();
 PR_ST5_NZ1 = 1;
 Delay_ms(2000);
 PR_ST5_NZ1 = 0;
 PR_ST5_NZ4 = 1;
 Delay_ms(2000);
 PR_ST5_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P5D2S0~") == 0))
 {
 while (PR_ST5_IR == 0)
 {
 UART1_Write_Text(PR_ST5_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS5();
 PR_ST5_NZ2 = 1;
 Delay_ms(2000);
 PR_ST5_NZ2 = 0;
 success();
 }
 else if ((strcmp(receive, "*P5D2S1~") == 0))
 {
 while (PR_ST5_IR == 0)
 {
 UART1_Write_Text(PR_ST5_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS5();
 PR_ST5_NZ2 = 1;
 Delay_ms(2000);
 PR_ST5_NZ2 = 0;
 PR_ST5_NZ4 = 1;
 Delay_ms(2000);
 PR_ST5_NZ4 = 0;
 success();
 }

 else if ((strcmp(receive, "*P5D3S0~") == 0))
 {
 while (PR_ST5_IR == 0)
 {
 UART1_Write_Text(PR_ST5_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS5();
 PR_ST5_NZ3 = 1;
 Delay_ms(2000);
 PR_ST5_NZ3 = 0;
 success();
 }
 else if ((strcmp(receive, "*P5D3S1~") == 0))
 {
 while (PR_ST5_IR == 0)
 {
 UART1_Write_Text(PR_ST5_Wait);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(200);
 }
 Glass_Detected_PS5();
 PR_ST5_NZ3 = 1;
 Delay_ms(2000);
 PR_ST5_NZ3 = 0;
 PR_ST5_NZ4 = 1;
 Delay_ms(2000);
 PR_ST5_NZ4 = 0;
 success();
 }


}


void success()
{
 UART1_Write_Text("Pouring Complete....");
 UART1_Write(13);
 UART1_Write(10);
}

void Glass_Detected_PS1()
{
 UART1_Write_Text(PR_ST1_Glass_detected);
 UART1_Write(13);
 UART1_Write(10);
 UART1_Write_Text("Pouring Started....");
 UART1_Write(13);
 UART1_Write(10);
}
void Glass_Detected_PS2()
{
 UART1_Write_Text(PR_ST2_Glass_detected);
 UART1_Write(13);
 UART1_Write(10);
 UART1_Write_Text("Pouring Started....");
 UART1_Write(13);
 UART1_Write(10);
}
void Glass_Detected_PS3()
{
 UART1_Write_Text(PR_ST3_Glass_detected);
 UART1_Write(13);
 UART1_Write(10);
 UART1_Write_Text("Pouring Started....");
 UART1_Write(13);
 UART1_Write(10);
}
void Glass_Detected_PS4()
{
 UART1_Write_Text(PR_ST4_Glass_detected);
 UART1_Write(13);
 UART1_Write(10);
 UART1_Write_Text("Pouring Started....");
 UART1_Write(13);
 UART1_Write(10);
}
void Glass_Detected_PS5()
{
 UART1_Write_Text(PR_ST5_Glass_detected);
 UART1_Write(13);
 UART1_Write(10);
 UART1_Write_Text("Pouring Started....");
 UART1_Write(13);
 UART1_Write(10);
}
