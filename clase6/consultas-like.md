# Consultas de coincidencia ( que contenga una cadena )

> Las consultas de coincidencia se utilizan para traer información de una tabla dónde se contenga una cadena de caractéres. 

> Traer nombre, precio y descripcion de la tabla productos
> dónde contenga la palabra "bluetooth" 
> dentro de la columna descripcion

    SELECT prdNombre, prdPrecio, prdDescripcion  
    FROM productos  
    WHERE prdDescripcion LIKE '%bluetooth%'; 

> Utilizamos la palabra reservada **LIKE** 
> Utilizamos el caracter **%** como una especie de 'comodin'
> que podría ocupar uno, varios o incluso ningún caracter.

> Comodín de 1 (un) sólo caracter

    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdNombre LIKE '_40%';
