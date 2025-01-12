01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC 9(5) VALUE 0. 
01  WS-AREA-2-FLAG PIC 9 VALUE 0. 
* Some other code
ADD 1 TO WS-AREA-2 ON SIZE ERROR PERFORM handle-overflow.
IF WS-AREA-2-FLAG = 1 THEN
    DISPLAY "Error: WS-AREA-2 exceeded maximum value." 
    STOP RUN. 
END-IF.

HANDLE-OVERFLOW SECTION.
    MOVE 1 TO WS-AREA-2-FLAG.
    DISPLAY "Error: WS-AREA-2 exceeded maximum value." 
END SECTION.