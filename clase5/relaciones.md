# Consultas a varias tablas (relaciones)

> Cuando queremos traer datos de dos o más tablas, debemos relacionar dichas tablas. 
> Tenemos dos técnicas.

## Table Relation: 
> La técnica **table relation** se logra mencionando en el 
> FROM las tablas a relacionar (separadas con comas) 
> y luego igualando la columna en común (la que está en ambas tablas) en un filtro

> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2  
    FROM tabla1, tabla2  
    WHERE tabla1.foreignKey = tabla2.primaryKey; 

> Dónde foreignKey y primaryKey es el nombre de la columna en común

> Ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos, marcas  
    WHERE productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos, marcas, categorias  
    WHERE productos.idMarca = marcas.idMarca  
    AND productos.idCategoria = categorias.idCategoria;

## JOIN

>  En la tecnica **JOIN** sólo mencionamos una sóla tabla en el FROM, pero agregamos la tabla secundaria con la palabra **JOIN** 
> y luego igualando la columna en común (la que está en ambas tablas) con la palabra **ON** 

> Sintáxis: 

    SELECT colTabla1, colTabla1, coltabla2  
    FROM tabla1  
     JOIN tabla1  
     ON tabla1.foreignKey = tabla2.primaryKey;  


> Ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos  
    JOIN marcas  
    ON productos.idMarca = marcas.idMarca;


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos
    JOIN marcas  
    ON productos.idMarca = marcas.idMarca  
    JOIN categorias  
    ON productos.idCategoria = categorias.idCategoria;
