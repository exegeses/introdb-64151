# Creación de tabla proveedores

CREATE TABLE proveedores
(
    idProveedor tinyint unsigned auto_increment primary key not null,
    prvNombre varchar(50) unique not null,
    prvCUIL bigint unsigned unique not null,
    prvTelefono bigint unsigned unique not null,
    prvDireccion varchar(60) not null
);

-- Inserción de datos
insert into proveedores
values
    ( DEFAULT, 'Proveedor de cámaras', 20111111112, 44444444, 'Dirección proveedor 1' ),
    ( DEFAULT, 'Proveedor de Audio', 20222222222, 44444445, 'Dirección proveedor 2' ),
    ( DEFAULT, 'Proveedor de Apple', 20333333332, 44444446, 'Dirección proveedor 3' ),
    ( DEFAULT, 'Proveedor de todo un poco', 20444444442, 44444447, 'Dirección proveedor 4' );
