       IDENTIFICATION DIVISION.
       PROGRAM-ID. ICCSAMP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT INPUT-FILE ASSIGN TO "input.dat"
               FILE STATUS IS WS-INPUT-STATUS.
       DATA DIVISION.
       FILE SECTION.
       FD  INPUT-FILE.
       01  INPUT-REC             PIC X(80).
       WORKING-STORAGE SECTION.
       01  WS-INPUT-STATUS       PIC XX VALUE SPACES.
       01  WS-EOF-FLAG           PIC X VALUE "N".
       PROCEDURE DIVISION.
       MAIN-PARA.
           OPEN INPUT INPUT-FILE
           IF WS-INPUT-STATUS NOT = "00"
              DISPLAY "INPUT OPEN FAILED STATUS=" WS-INPUT-STATUS
              GOBACK
           END-IF
           PERFORM READ-PARA UNTIL WS-EOF-FLAG = "Y"
           CLOSE INPUT-FILE
           GOBACK.
       READ-PARA.
           READ INPUT-FILE
              AT END
                 MOVE "Y" TO WS-EOF-FLAG
              NOT AT END
                 DISPLAY INPUT-REC
           END-READ.

