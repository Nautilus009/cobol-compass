       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALLC01.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  APP-LENGTH            PIC S9(09) COMP VALUE 12.
       01  APP-BUFFER            PIC X(32) VALUE "SAMPLE-DATA".
       01  APP-STATUS            PIC S9(09) COMP VALUE ZERO.
       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL "sample_helper"
              USING BY REFERENCE APP-BUFFER
                    BY VALUE APP-LENGTH
                    BY REFERENCE APP-STATUS
           END-CALL
           GOBACK.

