# Consulta para saber cuales son los proveedores de los productos

-- traer nombre de productos
-- traer nombre de proveedor
-- odenados por producto

/* versión JOIN */
SELECT prdNombre AS Producto, prvNombre AS Proveedor
FROM productos
JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON productos_proveedores.idProveedor = proveedores.idProveedor
ORDER BY prdNombre;



/* versión table relatioon */
SELECT prdNombre AS Producto, prvNombre AS Proveedor
FROM productos, productos_proveedores, proveedores
WHERE productos.idProducto = productos_proveedores.idProducto
 AND productos_proveedores.idProveedor = proveedores.idProveedor
ORDER BY prdNombre;