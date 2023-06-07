# VISTA es una consulta
-- que podemos almacenar en nuestra base de datos.
-- una VISTA **parece** una tabla.

CREATE VIEW consulta_precio
AS
SELECT
    idProducto as id,
    prdNombre AS Producto,
    prdPrecio AS 'Precio contado',
    prdPrecio * 1.05 AS 'Precio Lista',
    mkNombre AS Marca,
    catNombre AS Categoria
FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias AS c
              ON p.idCategoria = c.idCategoria;
