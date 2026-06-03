create database cavofinanzas;

use cavofinanzas;


---CREACION DE TABLA PROVEEDORES, CON SUS RESPECTIVOS CAMPOS	
Create table proveedores(
	codigo_proveedor int PRIMARY KEY,
	razon_social varchar(100) not null,
	cuit varchar(20) not null,
	telefono varchar(20) not null,
	localidad varchar(20) not null
);

select * from proveedores;

select COUNT(*) from proveedores;

SELECT TOP 5 * FROM Proveedores;






