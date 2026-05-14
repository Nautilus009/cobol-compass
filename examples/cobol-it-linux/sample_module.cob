*******************************************************************************
IDENTIFICATION DIVISION.
*******************************************************************************
PROGRAM-ID.    SAMPLE_MODULE.
AUTHOR.        Oren Nissan.
DATE-WRITTEN.  13-May-2026.

*******************************************************************************
ENVIRONMENT DIVISION.
*******************************************************************************
*----------------------------------------------------------------------
INPUT-OUTPUT    SECTION.
*----------------------------------------------------------------------
FILE-CONTROL.

    SELECT INPUT-FILE
           ASSIGN                 TO           "input.dat"
           ORGANIZATION           IS           SEQUENTIAL
           ACCESS                 IS           SEQUENTIAL
           FILE STATUS            IS           WS-INPUT-STATUS.

*******************************************************************************
DATA DIVISION.
*******************************************************************************
*----------------------------------------------------------------------
FILE SECTION.
*----------------------------------------------------------------------
FD INPUT-FILE.
01  INPUT-REC                     PIC X(80).

*----------------------------------------------------------------------
WORKING-STORAGE SECTION.
*----------------------------------------------------------------------
01  WS-INPUT-STATUS               PIC XX VALUE SPACES.
01  WS-EOF-FLAG                   PIC X  VALUE "N".
01  WS-INPUT-OPEN-FLAG            PIC X  VALUE "N".

*******************************************************************************
PROCEDURE DIVISION.
*******************************************************************************
DECLARATIVES.
*----------------------------------------------------------------------
001-I-O-PROBLEM SECTION.
*----------------------------------------------------------------------
    USE AFTER STANDARD ERROR PROCEDURE ON INPUT-FILE.
001.
****
    DISPLAY "** Error handling in file: input.dat"
    DISPLAY "** WS-INPUT-STATUS: " WS-INPUT-STATUS

    MOVE "Y" TO WS-EOF-FLAG
    .
END DECLARATIVES.
*----------------------------------------------------------------------
A-MAIN         SECTION.
*----------------------------------------------------------------------
A-00.

    PERFORM B-INIT

    IF WS-INPUT-STATUS = "00"
       PERFORM C-PROCESS
    END-IF

    PERFORM Z-FINISH
    .
A-EXIT.     EXIT.
*----------------------------------------------------------------------
B-INIT         SECTION.
*----------------------------------------------------------------------
B-00.

    OPEN INPUT INPUT-FILE

    IF WS-INPUT-STATUS = "00"
       MOVE "Y" TO WS-INPUT-OPEN-FLAG
    ELSE
       DISPLAY "INPUT OPEN FAILED STATUS=" WS-INPUT-STATUS
    END-IF
    .
B-EXIT.     EXIT.
*----------------------------------------------------------------------
C-PROCESS      SECTION.
*----------------------------------------------------------------------
C-00.

    PERFORM CA-READ
      UNTIL WS-EOF-FLAG = "Y"
    .
C-EXIT.     EXIT.
*----------------------------------------------------------------------
CA-READ        SECTION.
*----------------------------------------------------------------------
CA-00.

    READ INPUT-FILE
       AT END
          MOVE "Y" TO WS-EOF-FLAG
       NOT AT END
          DISPLAY INPUT-REC
    END-READ
    .
CA-EXIT.     EXIT.
*----------------------------------------------------------------------
Z-FINISH       SECTION.
*----------------------------------------------------------------------
Z-00.

    IF WS-INPUT-OPEN-FLAG = "Y"
       CLOSE INPUT-FILE
    END-IF

    STOP RUN
    .
Z-EXIT.     EXIT.
