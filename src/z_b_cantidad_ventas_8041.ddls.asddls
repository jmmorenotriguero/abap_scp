@AbapCatalog.sqlViewName: 'ZV_CANT_VEN_8041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cantidad ventas'
define view Z_B_CANTIDAD_VENTAS_8041 as select from Z_B_CLN_LIB_8041
{
    IdLibro as IdLibro,
    count(*) as Cantidad 
}
group by IdLibro
