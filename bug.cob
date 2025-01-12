01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC 9(5) VALUE 0. 
* Some other code
ADD 1 TO WS-AREA-2. 
IF WS-AREA-2 > 99999 THEN
    DISPLAY "Error: WS-AREA-2 exceeded maximum value." 
    STOP RUN. 
END-IF.