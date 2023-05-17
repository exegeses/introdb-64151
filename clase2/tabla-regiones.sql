# Creación de tabla regiones

CREATE TABLE regiones
(
    idRegion tinyint unsigned primary key auto_increment not null,
    regNombre varchar(30) unique not null
);

