USE cavofinanzas

select * from facturas_vencidas

select SUM(saldo), COUNT(razon_social) from facturas_vencidas
WHERE fecha_vto < '2024-01-31';

SELECT *
FROM facturas_vencidas
WHERE fecha_vto <= '2024-01-31';


SELECT
    razon_social,
    FORMAT(saldo, 'N0', 'es-AR') AS saldo_formateado,
    fecha_vto
FROM facturas_vencidas
WHERE fecha_vto <= '2024-01-31'
order by razon_social;


---Consulta para saber cuenta corriente entre fechas y con saldo X
SELECT *
FROM cuenta_corriente
where fecha_vto>='2030-01-01' and fecha_vto<='2030-12-31' and saldo >= 500000;

---Consulta para saber el TOP 10 proveedores con saldo adeudado
SELECT TOP (10)
    codigo_proveedor,
    razon_social,
    SUM(saldo) AS saldo_adeudado
FROM cuenta_corriente
GROUP BY
    codigo_proveedor,
    razon_social
ORDER BY
    saldo_adeudado DESC;


---Consulta para saber que facturas estan vencidas > 60 días - 31-60 días y 1-30 días
SELECT
CASE
    WHEN DATEDIFF(DAY, fecha_vto, GETDATE()) > 60 THEN 'Vencido > 60 días'
    WHEN DATEDIFF(DAY, fecha_vto, GETDATE()) > 30 THEN 'Vencido 31-60 días'
    WHEN DATEDIFF(DAY, fecha_vto, GETDATE()) > 0 THEN 'Vencido 1-30 días'
    ELSE 'Por vencer'
END AS Categoria,
SUM(saldo) AS Total
FROM cuenta_corriente
GROUP BY
CASE
    WHEN DATEDIFF(DAY, fecha_vto, GETDATE()) > 60 THEN 'Vencido > 60 días'
    WHEN DATEDIFF(DAY, fecha_vto, GETDATE()) > 30 THEN 'Vencido 31-60 días'
    WHEN DATEDIFF(DAY, fecha_vto, GETDATE()) > 0 THEN 'Vencido 1-30 días'
    ELSE 'Por vencer'
END
ORDER BY Total DESC;
