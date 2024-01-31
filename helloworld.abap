report  zdemo_helloworld.

*----------------------------------------------------------------------*
*       CLASS lcl_hello DEFINITION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS lcl_hello DEFINITION.
  PUBLIC SECTION.
    METHODS: constructor
                IMPORTING
                  i_name TYPE char30.
    METHODS: display_message.

  PRIVATE SECTION.
    DATA: name TYPE char30.

ENDCLASS.                    "lcl_hello DEFINITION

*----------------------------------------------------------------------*
*       CLASS lcl_hello IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS lcl_hello IMPLEMENTATION.
  METHOD constructor.
    me->name = i_name.
  ENDMETHOD.                    "constructor

  METHOD display_message.
    WRITE: / 'Hello: ', name.
  ENDMETHOD.                    "display_message
ENDCLASS.                    "lcl_hello IMPLEMENTATION

DATA: r_hello TYPE REF TO lcl_hello.

PARAMETERS: p_name TYPE char30 DEFAULT 'World OO!!'.

START-OF-SELECTION.

  CREATE OBJECT r_hello
    EXPORTING
      i_name = p_name.

  r_hello->display_message( ).