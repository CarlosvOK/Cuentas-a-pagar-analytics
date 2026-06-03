---CREACION DE VIEW 
CREATE VIEW deuda_por_proveedor AS
SELECT 
    P.razon_social,
    SUM(F.saldo) AS saldo_adeudado
FROM facturas F
INNER JOIN proveedores P
    ON F.codigo_proveedor = P.codigo_proveedor
GROUP BY P.razon_social;

drop VIEW DEUDA_POR_PROVEEDOR;

---SELECCION DE VIEW
SELECT sum(saldo_adeudado) as 'total'
FROM deuda_por_proveedor
where razon_social like 'N%';

ALTER VIEW deuda_por_proveedor AS
SELECT 
    P.codigo_proveedor,
    P.razon_social,
    SUM(F.saldo) AS saldo_adeudado
FROM facturas F
INNER JOIN proveedores P
    ON F.codigo_proveedor = P.codigo_proveedor
GROUP BY 
    P.codigo_proveedor,
    P.razon_social;
SELECT SUM(saldo_adeudado)
FROM deuda_por_proveedor;

SELECT *
FROM facturas
WHERE fecha_vto > GETDATE();

SELECT COUNT(*)
FROM facturas
WHERE fecha_vto > GETDATE();

SELECT sum(saldo)
FROM facturas
WHERE fecha_vto < GETDATE();
