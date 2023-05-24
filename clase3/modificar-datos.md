# Modificación de datos 

> Para modificar datos (registros) de una tabla 
> utilizamos el comando ***UPDATE***

> Sintáxis: 

    UPDATE nombreTabla  
       SET  
            nombreCulumna = valor  
      WHERE columnaID = valorID;


> Ejemplo práctico:

    UPDATE billeteras  
       SET  
            precio = 50000 
      WHERE id = 5;

> Aumentar el precio un 5% de su precio actual
> de un registro

    UPDATE billeteras  
       SET  
            precio = precio*1.05 
      WHERE id = 1;

