@AbapCatalog.sqlViewName: 'ZV_LIST_LIB_8041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Listado libros'
@Metadata.allowExtensions: true
define view Z_I_LISTADO_LIBROS_8041 as select from Z_B_LIBROS_8041 as Libros
association [0..*] to Z_B_CATEGO_8041 as _Categorias on Libros.Categoria = _Categorias.BiCateg
association [0..*] to Z_B_CLN_LIB_8041 as _LibrosClientes on Libros.Id = _LibrosClientes.IdLibro
association [0..*] to Z_B_CLIENTE_8041 as _Clientes on _LibrosClientes.IdCliente = _Clientes.IdCliente
association [0..*] to Z_B_ACC_CAT_8041 as _AccesosCategorias on _Clientes.TipoAcceso = _AccesosCategorias.TipoAcceso
association [1] to Z_B_CANTIDAD_VENTAS_8041 as _CantidadVentas on Libros.Id = _CantidadVentas.IdLibro
{  
  key Id,
  Categoria,
  Titulo,
  Autor,
  Editorial, 
  Idioma,
  Paginas,
  Precio,
  Moneda,
  Formato,
  Url,
  '' as Ventas,
  case
  when _CantidadVentas.Cantidad <= 0 then 0
  when _CantidadVentas.Cantidad between 1 and 2 then 1
  when _CantidadVentas.Cantidad between 3 and 4 then 2
  when _CantidadVentas.Cantidad > 4 then 3
  else 0
  end as CantidadVentas,
  _LibrosClientes.IdLibro as IdLib,
  _LibrosClientes.IdCliente as IdCli,
  _Clientes as Clientes,
  _Categorias.Descripcion as DescripcionCategoria
} 
