# Crear tablas en una base de datos

## Creación de tablas

> Para crear una tabla utilizamos el comando  
> "CREATE TABLE"  

> Sintáxis: 

    CREATE TABLE nombreTabla  
    ( 
        nombreCampo tipo caracter´´isticas,  
        nombreCampo2 tipo caracter´´isticas,  
        nombreCampo3 tipo caracter´´isticas,  
        nombreCampo4 tipo caracter´´isticas
    );

> Ejemplo práctico


    CREATE TABLE billeteras 
    (
        id tinyint unsigned auto_increment primary key not null,  
        nombre varchar(55)  not null,
        precio float(9,2) unsigned  not null,  
        stock tinyint  not null
    );  

## Eliminación de tablas

> Para eliminar una tabla utilizamos el comando ***DROP***

> Sintáxis: 

    DROP TABLE nombreTable;