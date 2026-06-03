USE cavofinanzas;

CREATE TABLE FACTURAS_TMP(
	codigo_proveedor VARCHAR(50),
	id_pago VARCHAR(50),
	id_tipo_producto VARCHAR(50),
	tipo_factura VARCHAR(50),
	condicion_pago VARCHAR(50),
	codigo_factura VARCHAR(50),
	fecha_mov VARCHAR(50),
	fecha_vto VARCHAR(50),
	fecha_emi VARCHAR(50),
	impor VARCHAR(50),
	cancelado VARCHAR(50),
	saldo VARCHAR(50),
	obs VARCHAR(100)
);

SELECT * FROM FACTURAS;

--- INSERTAR RELACION DE FACTURA CON PROVEEDOR

ALTER TABLE FACTURAS
ADD CONSTRAINT FK_FACTURAS_PROVEEDOR
FOREIGN KEY (CODIGO_PROVEEDOR)
REFERENCES PROVEEDORES(CODIGO_PROVEEDOR);


INSERT INTO facturas (
    codigo_proveedor,
    id_pago,
    id_tipo_producto,
    tipo_factura,
    condicion_pago,
    codigo_factura,
    fecha_mov,
    fecha_vto,
    fecha_emi,
    impor,
    cancelado,
    saldo,
    obs
)
SELECT 
    codigo_proveedor,
    CAST(LTRIM(RTRIM(id_pago)) AS INT),
    id_tipo_producto,
    tipo_factura,
    condicion_pago,
    codigo_factura,
    fecha_mov,
    fecha_vto,
    fecha_emi,
    CAST(impor AS DECIMAL(10,2)),
    CAST(cancelado AS DECIMAL(10,2)),
    CAST(saldo AS DECIMAL(10,2)),
    obs
FROM facturas_tmp
WHERE 
    ISNUMERIC(id_pago) = 1
    AND ISNUMERIC(impor) = 1
    AND ISNUMERIC(cancelado) = 1
    AND ISNUMERIC(saldo) = 1;

EXEC sp_rename 'facturas.impor', 'importe', 'COLUMN';

select SUM(saldo)
from facturas_vencidas;

select SUM(saldo_adeudado)
FROM deuda_por_proveedor

SELECT COUNT(DISTINCT razon_social)
FROM proveedores;







