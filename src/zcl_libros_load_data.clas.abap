CLASS zcl_libros_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LIBROS_LOAD_DATA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    DATA: lt_ztb_catego_8041 TYPE TABLE OF ztb_catego_8041,
          lt_ztb_cliente_8041 TYPE TABLE OF ztb_cliente_8041,
          lt_ztb_acc_cat_8041 TYPE TABLE OF ztb_acc_cat_8041,
          lt_ztb_libros_8041 TYPE TABLE OF ztb_libros_8041,
          lt_ztb_cln_lib_8041 TYPE TABLE OF ztb_cln_lib_8041,
          lv_string TYPE string,
          lv_count TYPE string.

**ZTB_CATEGO_8041**

lt_ztb_catego_8041 = VALUE #(
( bi_categ = 'A' descripcion = 'Aventuras' )
( bi_categ = 'T' descripcion = 'Terror' )
( bi_categ = 'B' descripcion = 'Biografía' )
( bi_categ = 'S' descripcion = 'Suspense' )
( bi_categ = 'C' descripcion = 'Crimen' )
).

DELETE FROM ztb_catego_8041.
INSERT ztb_catego_8041 FROM TABLE @lt_ztb_catego_8041.
SELECT * FROM ztb_catego_8041 INTO TABLE @lt_ztb_catego_8041.

lv_count = sy-dbcnt.

CONCATENATE lv_count 'registros insertados correctamente en tabla ZTB_CATEGO_8041' INTO lv_string SEPARATED BY space.
out->write( lv_string ).


**ZTB_CLIENTE_8041**

lt_ztb_cliente_8041 = VALUE #(
( id_cliente = '1' tipo_acceso = 'A' nombre = 'Antonio' apellidos = 'Perez Rodriguez' email = 'antonioperezrodriguez@mail.com'
url = 'https://www.learningbubbles.net/utilizar-avatares-en-el-aula/img_1109/')
( id_cliente = '2' tipo_acceso = 'I' nombre = 'Juan' apellidos = 'Dominguez Ortiz' email = 'juandominguezortiz@mail.com'
url = 'https://www.learningbubbles.net/utilizar-avatares-en-el-aula/img_1109/')
( id_cliente = '3' tipo_acceso = 'A' nombre = 'Beatriz' apellidos = 'Roldan Fernandez' email = 'beatrizroldanfernandez@mail.com'
url = 'https://img.freepik.com/vector-premium/mujer-avatar-mujer-negocios_38295-63.jpg')
( id_cliente = '4' tipo_acceso = 'I' nombre = 'Sara' apellidos = 'Otero Garcia' email = 'saraoterogarcia@mail.com'
url = 'https://img.freepik.com/vector-premium/mujer-avatar-mujer-negocios_38295-63.jpg')
( id_cliente = '5' tipo_acceso = 'A' nombre = 'Alfonso' apellidos = 'Moreno Alvarez' email = 'alfonsomorenoalvarez@mail.com'
url = 'https://www.learningbubbles.net/utilizar-avatares-en-el-aula/img_1109/')
( id_cliente = '6' tipo_acceso = 'A' nombre = 'Pedro' apellidos = 'Roman Caballero' email = 'pedroromancaballero@mail.com'
url = 'https://www.learningbubbles.net/utilizar-avatares-en-el-aula/img_1109/')
( id_cliente = '7' tipo_acceso = 'A' nombre = 'Manuel' apellidos = 'Martin Bellido' email = 'manuelmartinbellido@mail.com'
url = 'https://www.learningbubbles.net/utilizar-avatares-en-el-aula/img_1109/')
( id_cliente = '8' tipo_acceso = 'A' nombre = 'Sofia' apellidos = 'Hernandez Paez' email = 'sofiahernandezpaez@mail.com'
url = 'https://img.freepik.com/vector-premium/mujer-avatar-mujer-negocios_38295-63.jpg')
).

DELETE FROM ztb_cliente_8041.
INSERT ztb_cliente_8041 FROM TABLE @lt_ztb_cliente_8041.
SELECT * FROM ztb_cliente_8041 INTO TABLE @lt_ztb_cliente_8041.

lv_count = sy-dbcnt.

CONCATENATE lv_count 'registros insertados correctamente en tabla ZTB_CLIENTE_8041' INTO lv_string SEPARATED BY space.
out->write( lv_string ).


**ZTB_ACC_CAT_8041**

lt_ztb_acc_cat_8041 = VALUE #(
( bi_categ = 'A' tipo_acceso = 'A' )
( bi_categ = 'T' tipo_acceso = 'A' )
( bi_categ = 'B' tipo_acceso = 'A' )
( bi_categ = 'S' tipo_acceso = 'A' )
( bi_categ = 'C' tipo_acceso = 'A' )
( bi_categ = 'A' tipo_acceso = 'I' )
( bi_categ = 'B' tipo_acceso = 'I' )
( bi_categ = 'S' tipo_acceso = 'I' )
).

DELETE FROM ztb_acc_cat_8041.
INSERT ztb_acc_cat_8041 FROM TABLE @lt_ztb_acc_cat_8041.
SELECT * FROM ztb_acc_cat_8041 INTO TABLE @lt_ztb_acc_cat_8041.

lv_count = sy-dbcnt.

CONCATENATE lv_count 'registros insertados correctamente en tabla ZTB_ACC_CAT_8041' INTO lv_string SEPARATED BY space.
out->write( lv_string ).



**ZTB_LIBROS_8041**

lt_ztb_libros_8041 = VALUE #(
( id_libro = '1' bi_categ = 'A' titulo = 'El tren de las fantasias' autor = 'John Alan' editorial = 'Anaya' idioma = 'EN' paginas = 109 precio = 10 moneda = 'USD' formato = 'Papel'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '2' bi_categ = 'C' titulo = 'El asesinato de John' autor = 'Felipe Martinez' editorial = 'Educa' idioma = 'ES' paginas = 115 precio = 13 moneda = 'EUR' formato = 'Digital'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '3' bi_categ = 'B' titulo = 'La vida de Carmen' autor = 'Maria Jose Mancera' editorial = 'Santillana' idioma = 'ES' paginas = 210 precio = 23 moneda = 'EUR' formato = 'Digital'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '4' bi_categ = 'C' titulo = 'La muerte en 90 dias' autor = 'Juan Cruz' editorial = 'Educa' idioma = 'ES' paginas = 100 precio = 8 moneda = 'EUR' formato = 'Papel'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '5' bi_categ = 'A' titulo = 'El barco en alta mar' autor = 'Sofia Bermudez' editorial = 'Educa' idioma = 'ES' paginas = 546 precio = 67 moneda = 'EUR' formato = 'Digital'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '6' bi_categ = 'T' titulo = 'La casa encantada' autor = 'Jose Hidalgo' editorial = 'Santillana' idioma = 'ES' paginas = 265 precio = 33 moneda = 'EUR' formato = 'Papel'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '7' bi_categ = 'S' titulo = 'El barco fantasma' autor = 'Felipe Martinez' editorial = 'Anaya' idioma = 'ES' paginas = 89 precio = 8 moneda = 'EUR' formato = 'Digital'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '8' bi_categ = 'S' titulo = 'El testimonio' autor = 'John Alan' editorial = 'Anaya' idioma = 'EN' paginas = 178 precio = 23 moneda = 'USD' formato = 'Papel'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '9' bi_categ = 'C' titulo = 'Cadenas rotas' autor = 'Felipe Martinez' editorial = 'Anaya' idioma = 'ES' paginas = 189 precio = 20 moneda = 'EUR' formato = 'Digital'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
( id_libro = '10' bi_categ = 'T' titulo = 'El hotel maldito' autor = 'Juan Cruz' editorial = 'Anaya' idioma = 'ES' paginas = 302 precio = 28 moneda = 'EUR' formato = 'Digital'
url = 'https://www.dibujos-faciles.com/wp-content/uploads/2022/11/Libro-de-dibujo-paso4-3.jpg' )
).

DELETE FROM ztb_libros_8041.
INSERT ztb_libros_8041 FROM TABLE @lt_ztb_libros_8041.
SELECT * FROM ztb_libros_8041 INTO TABLE @lt_ztb_libros_8041.

lv_count = sy-dbcnt.

CONCATENATE lv_count 'registros insertados correctamente en tabla ZTB_LIBROS_8041' INTO lv_string SEPARATED BY space.
out->write( lv_string ).


**ZTB_CLN_LIB_8041**

lt_ztb_cln_lib_8041 = VALUE #(
( id_cliente = '1' id_libro = '4' )
( id_cliente = '2' id_libro = '3' )
( id_cliente = '3' id_libro = '5' )
( id_cliente = '4' id_libro = '9' )
( id_cliente = '5' id_libro = '7' )
( id_cliente = '6' id_libro = '1' )
( id_cliente = '7' id_libro = '10' )
( id_cliente = '8' id_libro = '6' )
).

DELETE FROM ztb_cln_lib_8041.
INSERT ztb_cln_lib_8041 FROM TABLE @lt_ztb_cln_lib_8041.
SELECT * FROM ztb_cln_lib_8041 INTO TABLE @lt_ztb_cln_lib_8041.

lv_count = sy-dbcnt.

CONCATENATE lv_count 'registros insertados correctamente en tabla ZTB_CLN_LIB_8041' INTO lv_string SEPARATED BY space.
out->write( lv_string ).



  ENDMETHOD.
ENDCLASS.
