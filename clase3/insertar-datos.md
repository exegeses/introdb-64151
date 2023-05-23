# Insertar datos en SQL

> Hay 3 maneras de insertar datos en SQL 

## Sintáxis usando ***SET*** 

> Sintáxis: 

    INSERT INTO nombreTabla  
      SET  
            nombreColumna = valor,
            nombreColumna = valor,
            nombreColumna = valor;

> Ejemplo práctico: 

    INSERT INTO billeteras  
       SET  
            id = DEFAULT,  
            nombre = 'Ledger Nano S',
            precio = 16000,  
            stock = 30;

    INSERT INTO billeteras  
       SET  
            id = DEFAULT,  
            nombre = 'Trezor One',
            precio = 19500,  
            stock = 30;

## Sintáxis completa (se mencionan los campos)

> Sintáxis:

    INSERT INTO nombreTabla  
        ( nombreColumna, nombreColumna, nombreColumna )  
      VALUES  
        ( valor, valor, valor );  

> Ejemplo práctico: 
 
    INSERT INTO billeteras  
        ( nombre, precio, stock )  
      VALUES  
        ( 'Trezor T', 78000, 20 );

## Sintáxis simplificada (NO se mencionan los campos)

> Sintáxis:

    INSERT INTO nombreTabla  
      VALUES  
        ( DEFAULT, valor, valor, valor );

> Ejemplo práctico: 

    INSERT INTO billeteras  
      VALUES  
        ( DEFAULT, 'Ledger Nano X', 56000, 20 );

