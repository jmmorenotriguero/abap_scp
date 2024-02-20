@AbapCatalog.sqlViewName: 'ZV_CATEGO_8041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorías'
define view Z_B_CATEGO_8041 as select from ztb_catego_8041
{
    @UI.hidden: true
    key bi_categ as BiCateg,
    descripcion as Descripcion
}
