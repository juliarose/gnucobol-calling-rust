       IDENTIFICATION DIVISION.
       PROGRAM-ID. rust-caller.
      *
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
         01 rptr               USAGE POINTER.
         01 rust-buffer        PIC X(80) BASED.
         01 cat-name           PIC X(80).
      *
       PROCEDURE DIVISION.
           sample-main.
           CALL STATIC "get_cat_name" RETURNING rptr
           IF rptr NOT EQUAL NULL THEN
               SET ADDRESS OF rust-buffer TO rptr
      *This will remove the null-terminator
      *        STRING rust-buffer DELIMITED BY LOW-VALUE INTO cat-name
               STRING rust-buffer INTO cat-name
           END-IF
      *cat-name should be null-terminated
           CALL STATIC "say_hello_cat" USING BY REFERENCE cat-name.
      *This will take the pointer from above
           CALL STATIC "say_hello_cat" USING VALUE rptr.
           STOP RUN.
