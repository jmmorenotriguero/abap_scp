@AbapCatalog.sqlViewName: 'ZV_CLN_LIB_8041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros clientes'
define view Z_B_CLN_LIB_8041 as select from ztb_cln_lib_8041
{
    key id_cliente as IdCliente,
    key id_libro as IdLibro
}
