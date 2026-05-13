       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILSTAT.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO "input.dat"
               FILE STATUS IS WS-IN-STATUS.
       DATA DIVISION.
       FILE SECTION.
       FD  IN-FILE.
       01  IN-REC                PIC X(80).
       WORKING-STORAGE SECTION.
       01  WS-IN-STATUS          PIC XX VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PARA.
           OPEN INPUT IN-FILE
           IF WS-IN-STATUS NOT = "00"
              DISPLAY "OPEN FAILED STATUS=" WS-IN-STATUS
              GOBACK
           END-IF
           CLOSE IN-FILE
           GOBACK.

