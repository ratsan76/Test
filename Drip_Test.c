#include "hardware.h"
void USART1_RX_interrupt() iv IVT_INT_USART1 ics ICS_AUTO{
     //Green_Led = 1;
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
       //UART_Set_Active(&UART1_Read, &UART1_Write, &UART1_Data_Ready, &UART1_Tx_Idle);
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
  /****************************************************/


void working()
{
       /************For Pouring Station 1****************/
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
  /****************************************************/

     /************For Pouring Station 2****************/
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
  /****************************************************/
  /************For Pouring Station 3****************/
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
  /****************************************************/
  
  /************For Pouring Station 4****************/
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
  /****************************************************/
  
  
    /************For Pouring Station 5****************/
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
  /****************************************************/

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