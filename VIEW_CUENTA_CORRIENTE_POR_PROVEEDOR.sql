---Seleccion de facturas segun preferencias
select codigo_proveedor,codigo_factura,fecha_vto,saldo,obs from facturas;

select * from facturas;
select * from proveedores;

CREATE VIEW cuenta_corriente AS
select 
ft.codigo_proveedor,pr.razon_social,pr.cuit,ft.codigo_factura,ft.fecha_vto,ft.saldo,obs 
from facturas as ft
inner join proveedores as pr
	on ft.codigo_proveedor = pr.codigo_proveedor

select * from cuenta_corriente
where razon_social = 'Isabella Ltd.';


