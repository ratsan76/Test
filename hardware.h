//Setting Bits for the Pumps.......
//Pumps for Pouring Station 1
sbit PR_ST1_NZ1 at GPIOE_ODR.B9;
sbit PR_ST1_NZ2 at GPIOE_ODR.B11;
sbit PR_ST1_NZ3 at GPIOE_ODR.B13;
sbit PR_ST1_NZ4 at GPIOE_ODR.B15;

//Pumps for Pouring Station 2
sbit PR_ST2_NZ1 at GPIOB_ODR.B1;
sbit PR_ST2_NZ2 at GPIOA_ODR.B12;
sbit PR_ST2_NZ3 at GPIOC_ODR.B12;  /////// Changed
sbit PR_ST2_NZ4 at GPIOA_ODR.B8;

//Pumps for Pouring Station 3
sbit PR_ST3_NZ1 at GPIOC_ODR.B8;
sbit PR_ST3_NZ2 at GPIOC_ODR.B6;
sbit PR_ST3_NZ3 at GPIOD_ODR.B14;
sbit PR_ST3_NZ4 at GPIOD_ODR.B12;

//Pumps for Pouring Station 4
sbit PR_ST4_NZ1 at GPIOD_ODR.B10;
sbit PR_ST4_NZ2 at GPIOD_ODR.B8;
sbit PR_ST4_NZ3 at GPIOB_ODR.B14;
sbit PR_ST4_NZ4 at GPIOB_ODR.B12;

//Pumps for Pouring Station 5
sbit PR_ST5_NZ1 at GPIOE_ODR.B8;
sbit PR_ST5_NZ2 at GPIOE_ODR.B10;
sbit PR_ST5_NZ3 at GPIOE_ODR.B12;
sbit PR_ST5_NZ4 at GPIOE_ODR.B14;

//Pumps for Pouring Station 6
sbit PR_ST6_NZ1 at GPIOB_ODR.B10;
sbit PR_ST6_NZ2 at GPIOC_ODR.B4;
sbit PR_ST6_NZ3 at GPIOA_ODR.B11;
sbit PR_ST6_NZ4 at GPIOD_ODR.B0; //Changed


//Pumps for Pouring Station 7
sbit PR_ST7_NZ1 at GPIOC_ODR.B9;
sbit PR_ST7_NZ2 at GPIOC_ODR.B7;
sbit PR_ST7_NZ3 at GPIOD_ODR.B15;
sbit PR_ST7_NZ4 at GPIOD_ODR.B13;

//Pumps for Pouring Station 8
sbit PR_ST8_NZ1 at GPIOD_ODR.B11;
sbit PR_ST8_NZ2 at GPIOD_ODR.B9;
sbit PR_ST8_NZ3 at GPIOB_ODR.B15;
sbit PR_ST8_NZ4 at GPIOB_ODR.B13;



//Pumps for Reservoirs to Dispenser
sbit Res_Dis_1 at GPIOD_ODR.B15;
sbit Res_Dis_2 at GPIOD_ODR.B13;
sbit Res_Dis_3 at GPIOD_ODR.B11;

//Pumps for Flush Dispenser and Pumps
sbit Water_Dis_1 at GPIOD_ODR.B9;
sbit Water_Dis_2 at GPIOB_ODR.B15;
sbit Water_Dis_3 at GPIOB_ODR.B13;


//IR Sensors for Pouring Stations...
sbit PR_ST4_IR at GPIOE_IDR.B0;
sbit PR_ST2_IR at GPIOB_IDR.B8;
sbit PR_ST3_IR at GPIOB_IDR.B1;
//sbit PR_ST4_IR at GPIOE_IDR.B7;
//sbit PR_ST5_IR at GPIOE_IDR.B1;
//sbit PR_ST6_IR at GPIOB_IDR.B9;
//sbit PR_ST7_IR at GPIOB_IDR.B0;
//sbit PR_ST8_IR at GPIOB_IDR.B2;
//sbit PR_ST1_IR at GPIOB_IDR.B9;
sbit PR_ST1_IR at GPIOB_IDR.B0;
sbit PR_ST5_IR at GPIOB_IDR.B2;



/*******************Load Cell Mapping
  1. PA1  Pouring Station 1 Loadccell
  2. PA2  Pouring Station 2 Loadccell
  3. PA4  Pouring Station 3 Loadccell
  4. PA5  Pouring Station 4 Loadccell
  5. PA6  Pouring Station 5 Loadccell
  6. PA7  Pouring Station 6 Loadccell
  7. PA3  Pouring Station 7 Loadccell
  8. PA0  Pouring Station 8 Loadccell
  ***********************************/
  
  
/***********HCSR04 Pin Mapping*******/
sbit TRIG_PS1 at GPIOD_ODR.B6;
sbit ECHO_PS1 at GPIOD_IDR.B5;
float HCSR04_Number = 0.0171821;
unsigned long HCSR04_Echo_Time = 0;
float Distance = 0;
char Distance_STR[5] = "";
/************************************/


//variables and string for Receiving the Uart Data.....
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
char  Load_Cell_Data_PS_1_STR[3] = "";
char  Load_Cell_Data_PS_2_STR[3] = "";
char  Load_Cell_Data_PS_3_STR[3] = "";
char  Load_Cell_Data_PS_4_STR[3] = "";
char  Load_Cell_Data_PS_5_STR[3] = "";

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
  //TRIG_PS1 = 0;
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
   //Delay_ms(100);
   HCSR04_Echo_Time = 0;
}