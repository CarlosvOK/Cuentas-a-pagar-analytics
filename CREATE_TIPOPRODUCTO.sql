---CREACION DE TABLA TIPO DE PRODUCTOS, CON SUS RESPECTIVOS CAMPOS

use cavofinanzas;

Create table tipo_producto(
	id_tipo_producto INT PRIMARY KEY,
	codigo_producto varchar(20) NOT NULL,
	nombre_producto varchar(50) NOT NULL
);

select * from tipo_producto;

select * from proveedores;

select razon_social, localidad
from proveedores  
group by localidad





