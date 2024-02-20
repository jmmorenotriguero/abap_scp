CLASS zcl_borrar_tabla_8041 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_borrar_tabla_8041 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DELETE FROM ZTB_CATEGO_8041.

  IF sy-subrc EQ 0.
    out->write( 'All data deleted' ).
  ENDIF.

  ENDMETHOD.
ENDCLASS.
