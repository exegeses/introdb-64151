# Crear tablas catálogo

-- crear tabla marcas
CREATE TABLE marcas
(
    idMarca tinyint unsigned auto_increment not null,
    mkNombre varchar(45)  not null,
    primary key (idMarca),
    unique (mkNombre)
);

-- crear tabla categorías
CREATE TABLE categorias
(
    idCategoria tinyint unsigned primary key auto_increment not null,
    catNombre varchar(45) unique not null
);

-- crear tabla productos
CREATE TABLE productos
(
    idProducto mediumint unsigned primary key auto_increment not null,
    prdNombre varchar(45) unique not null,
    prdPrecio float(8,2) unsigned not null,
    idMarca tinyint unsigned not null,
        foreign key (idMarca) references marcas (idMarca),
    idCategoria tinyint unsigned not null,
        foreign key (idCategoria) references categorias (idCategoria),
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean not null DEFAULT (1)
);