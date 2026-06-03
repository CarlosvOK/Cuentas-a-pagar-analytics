use cavofinanzas

ALTER AUTHORIZATION ON DATABASE::cavofinanzas TO sa;


SELECT * FROM proveedores;

---ESTADO DE DEUDA POR PROVEEDOR 
SELECT P.razon_social, FORMAT(SUM(F.saldo),'n2','es-AR') AS 'SALDO ADEUDADO'
FROM facturas F
INNER JOIN proveedores P
on f.codigo_proveedor=P.codigo_proveedor
WHERE P.razon_social = 'Alexander GmbH'
GROUP BY P.razon_social

---ESTADO DE LA DEUDA DE TODOS LOS PROVEEDORES 
SELECT P.razon_social, FORMAT(SUM(F.saldo),'n2','es-AR') AS 'SALDO ADEUDADO'
FROM facturas F
INNER JOIN proveedores P
on f.codigo_proveedor=P.codigo_proveedor
GROUP BY P.razon_social
ORDER BY SUM(F.SALDO) DESC