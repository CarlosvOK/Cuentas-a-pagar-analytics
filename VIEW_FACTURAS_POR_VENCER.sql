CREATE VIEW facturas_por_vencer AS
SELECT 
    pr.razon_social,
    ft.codigo_proveedor,
    ft.fecha_vto,
    ft.saldo
FROM facturas ft
INNER JOIN proveedores pr
    ON ft.codigo_proveedor = pr.codigo_proveedor
WHERE ft.fecha_vto > GETDATE()
AND ft.saldo > 0;

select * from facturas_por_vencer