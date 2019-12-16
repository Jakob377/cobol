       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAMPLE as "SAMPLE".
       AUTHOR. JAKOB.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. 
       OBJECT-COMPUTER.
       
       INPUT-OUTPUT SECTION.
              
             
       DATA DIVISION.
       FILE SECTION.
   
       WORKING-STORAGE SECTION.
       01  WS-NAME  PIC X(10).
       01  WS-NUMBER-ONE PIC 9999.
       01  WS-NUMBER-TWO PIC 9999.
       01  WS-ANSWER PIC 9999.
       01  WS-PASSWORD PIC X(20).
       01  WS-OPERATION pic x.
       01  WS-I PIC 99.
       
       
       PROCEDURE DIVISION.
       0001-HELLO-WORLD.
                 DISPLAY "Enter your first name".
                 ACCEPT  WS-NAME.
                 DISPLAY "Hello ", WS-NAME.
                 DISPLAY "Enter a number ".
                 ACCEPT  WS-NUMBER-ONE.
                 DISPLAY "Enter an operation".
                 ACCEPT WS-OPERATION.
                 DISPLAY "Enter a second number ".
                 ACCEPT  WS-NUMBER-TWO.
                 IF WS-OPERATION IS EQUAL TO '+' THEN
                   COMPUTE WS-ANSWER = WS-NUMBER-ONE + WS-NUMBER-TWO
                 END-IF.
                 IF WS-OPERATION IS EQUAL TO '-' THEN
                   COMPUTE WS-ANSWER = WS-NUMBER-ONE - WS-NUMBER-TWO
                 END-IF.
                 IF WS-OPERATION IS EQUAL TO '*' THEN
                  COMPUTE WS-ANSWER = WS-NUMBER-ONE * WS-NUMBER-TWO
                 END-IF.
                 IF WS-OPERATION IS EQUAL TO '/' THEN
                  COMPUTE WS-ANSWER = WS-NUMBER-ONE / WS-NUMBER-TWO
                 END-IF.
                 DISPLAY "Answer = ", WS-ANSWER.
                 DISPLAY 'INSERT A PASSWORD :'.
                 ACCEPT WS-PASSWORD.
                 MOVE 1 TO WS-I.
                 PERFORM UNTIL WS-PASSWORD(WS-I:1) = SPACE
                 COMPUTE WS-I = WS-I + 1
                 END-PERFORM.
                 COMPUTE WS-I = WS-I - 1.
                 IF WS-I IS LESS THAN 7
                 DISPLAY 'Your password is too small'
                 ELSE
                 DISPLAY 'Your password is vaild'
                 END-IF.
                 DISPLAY WS-I.
           STOP RUN.
           
          END PROGRAM SAMPLE.




