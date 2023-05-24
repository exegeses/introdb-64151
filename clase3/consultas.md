# Consultas en SQL

## Consultas a server

> Para hacer consultas al server utilizamos
> la palabra reservada ***SELECT***

    SELECT DATABASE();  

    SELECT CURRENT_DATE(); 

## Consultas a tablas de una base de datos

> Para generar consultas a tablas de una BBDD
> también utilizamos la sentencia ***"SELECT"***,  
> pero además debemos especificar las/s tablas  
> con la palabra ***FROM***  

> Sintáxis: 

    SELECT columna, columna  
    FROM nombreTabla; 

> Ejemplo práctico: 

    SELECT destNombre, destPrecio
    FROM destinos;  


## Orden de registros

> Para ordenas registros utilizamos
> las palabras ***ORDER BY***

> Sintáxis

    SELECT nCampo3, campo5  
        FROM nTabla  
        ORDER BY nCampo4;  

> Ejemplo

    SELECT destNombre, destPrecio
        FROM destinos
        ORDER BY destNombre;

## Filtrado de registros

> Filtrar registros significa traer sólamente los registros que cumplan alguna condición dada

> Para especificar condiciones de filtrado usamos la palabra ***WHERE***  

> Sintáxis: 

    SELECT nCampo3, campo5  
        FROM nTabla  
     WHERE condición;

> Ejemplo práctico: 
> Traer nombre y precio de la tabla destinos
> dónde el precio no supere los 8000; 

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio <= 8000;    

> Traer nombre y precio de la tabla destinos
> dónde el precio esté entre 6500 y 8000 

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio >= 6500  
      AND destPrecio <= 8000;  

> Ahora la misma consulta pero utilizando ***BETWEEN***

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio BETWEEN 6500 AND 8000;  

> Traer nombre y precio de la región 5

    SELECT destNombre, destPrecio  
        FROM destinos  
    WHERE idRegion = 5;

> Traer nombre y precio de la región 5 y de la región 3

    SELECT destNombre, destPrecio  
        FROM destinos  
    WHERE idRegion = 5 
       OR idRegion = 3;  


    SELECT destNombre, destPrecio
    FROM destinos
    WHERE idRegion IN( 5, 3 );
