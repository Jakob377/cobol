       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONVERTER AS "CONVERTER".
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-CONVERTER                PIC 9.
           01 WS-TEMPERATURE.
               05 WS-INPUT-TEMP        PIC 9(3)V9(3).
               05 WS-CONVERTED-TEMP1    PIC 9(3)V9(3).
               05 WS-CONVERTED-TEMP2    PIC 9(3)V9(3).
       PROCEDURE DIVISION.
          DISPLAY "[CONVERT TEMP] 1= (C => F) 2= (F => C)".
          ACCEPT WS-CONVERTER.

          DISPLAY "Give number".
          ACCEPT WS-INPUT-TEMP.

          IF WS-CONVERTER = 1 THEN
                COMPUTE WS-CONVERTED-TEMP1 = WS-INPUT-TEMP * (9/5) + 32
                DISPLAY WS-CONVERTED-TEMP1
          ELSE  
                COMPUTE WS-CONVERTED-TEMP2 = (WS-INPUT-TEMP - 32) * 5/9
                DISPLAY WS-CONVERTED-TEMP2
          END-IF.
          
          STOP RUN.
       END PROGRAM CONVERTER.