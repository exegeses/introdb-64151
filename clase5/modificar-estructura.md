# Modificar estructura de una tabla

## Cambiar nombre a una columna

> Sintáxis: 

    ALTER TABLE nombreTabla    
        CHANGE nombreActual nombreNuevo tipoDato;

> Ejemplo práctico: 

    ALTER TABLE destinos  
    CHANGE destAsientos totales tinyint unsigned not null;

## Cambiar tipo de datos de una columna

> Sintáxis:

    ALTER TABLE nombreTabla    
        MODIFY nombreCol tipoDato modificador;

> Ejemplo práctico: 

    ALTER TABLE billeteras  
        MODIFY nombre varchar(60)  not null;

## Agregar una nueva columna al final

> Sintáxis:

    ALTER TABLE nombreTabla    
        ADD nombreCol tipoDato modificador; 

> Ejemplo práctico: 

    ALTER TABLE billeteras  
        ADD descripcion varchar(500) not null;

## Agregar una nueva columna después de una columna existente

> Sintáxis:

    ALTER TABLE nombreTabla    
       ADD nombreColNueva tipoDato modificador  
       AFTER nombreColExistente;

> Ejemplo práctico:

    ALTER TABLE billeteras  
        ADD descripcion varchar(500) not null  
        AFTER precio;



## Eliminar una columna

> Sintáxis:

    ALTER TABLE nombreTabla    
        DROP nombreColumna;

> Ejemplo práctico:

    ALTER TABLE billeteras  
        DROP descripcion; 


## Cambiar el valor del autoincremental

    alter table tablename AUTO_INCREMENT = valor;

    alter table billeteras AUTO_INCREMENT = 20;

