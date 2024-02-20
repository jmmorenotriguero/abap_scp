@AbapCatalog.sqlViewName: 'ZV_ACC_CAT_8041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Accesos categorías'
define view Z_B_ACC_CAT_8041 as select from ztb_acc_cat_8041
{
    key bi_categ as BiCateg,
    key tipo_acceso as TipoAcceso
}
