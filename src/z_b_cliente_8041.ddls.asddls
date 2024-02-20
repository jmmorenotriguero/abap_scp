@AbapCatalog.sqlViewName: 'ZV_CLIENTES_8041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
define view Z_B_CLIENTE_8041 as select from ztb_cliente_8041 
{
    key id_cliente as IdCliente,
    key tipo_acceso as TipoAcceso,
    nombre as Nombre,
    apellidos as Apellidos,
    email as Email,
    url as Url
}
