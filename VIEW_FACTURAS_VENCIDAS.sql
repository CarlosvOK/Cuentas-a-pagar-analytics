Create view facturas_vencidas as
---Facturas vencidas por proveedor mayores a 10M
Select pr.razon_social,ft.codigo_proveedor,ft.tipo_factura,ft.fecha_vto,ft.saldo
from facturas ft
inner join proveedores as pr
on ft.codigo_proveedor=pr.codigo_proveedor
where ft.fecha_vto<GETDATE()---Se puede colocar un rango de fecha x quizas facturas muy viejas en sistema que no reclaman
AND ft.saldo>0
AND ft.saldo>10000000;

select SUM(saldo) from facturas_vencidas
WHERE saldo >900000000 and tipo_factura LIKE '%FA%'

Alter view facturas_vencidas AS
SELECT
pr.razon_social,
ft.codigo_proveedor,
ft.tipo_factura,
ft.fecha_vto,
ft.saldo
FROM facturas ft
INNER JOIN proveedores pr
	on ft.codigo_proveedor = pr.codigo_proveedor
where ft.fecha_vto<GETDATE()

select * from proveedores

