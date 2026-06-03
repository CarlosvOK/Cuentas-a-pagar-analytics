---CREACION DE TABLA FORMAS DE PAGO, CON SUS RESPECTIVOS CAMPOS
Create table formas_pagos(
	id_pago int PRIMARY KEY,
	descripcion varchar(50) not null
);

use cavofinanzas;

select * from formas_pagos;

UPDATE formas_pagos
SET descripcion = 'Se paga en central'
WHERE id_pago = 1;