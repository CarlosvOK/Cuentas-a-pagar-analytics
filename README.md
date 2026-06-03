# Cuentas-a-pagar-analytics

#📊Proyecto de Análisis de Cuentas por Pagar

Carlos velasquez 
Nombre del archivo de PowerBi FINANZASCAVO

<img width="1914" height="1085" alt="image" src="https://github.com/user-attachments/assets/7f043d85-f35e-4a1c-b77e-108da7e4c591" />


Introducción Objetivo Desarrollar un dashboard interactivo para el análisis de cuentas por pagar, permitiendo visualizar el estado de la deuda con proveedores, identificar facturas vencidas y facilitar la toma de decisiones financieras.

Obtención y Preparación de Datos Fuente de datos Los datos fueron obtenidos desde una base de datos SQL Server, utilizando una tabla principal denominada: cuenta_corriente

La misma contiene información relacionada con: Proveedores Facturas Fechas de vencimiento Saldos adeudados Información administrativa

Limpieza de Datos Antes de comenzar el análisis fue necesario realizar un proceso de depuración para garantizar la calidad de la información.

Tareas realizadas Eliminación de registros innecesarios. Verificación de valores nulos. Validación de formatos de fecha. Revisión de duplicados. Normalización de nombres de proveedores. Corrección de inconsistencias en montos y fechas.

Modelado y Análisis de Datos Una vez depurada la información, se procedió a definir la estructura analítica necesaria para responder las preguntas de negocio.
Preguntas planteadas Estado actual de la deuda ¿Cuál es el saldo total adeudado? Facturas vencidas ¿Cuánto dinero se encuentra vencido? ¿Qué porcentaje representa sobre el total? Proveedores ¿Cuántos proveedores poseen deuda activa? ¿Cuáles concentran los mayores montos adeudados? Riesgo financiero ¿Qué proveedores superan los montos críticos definidos? ¿Qué facturas requieren atención inmediata? Evolución temporal ¿Cómo evolucionó la deuda a lo largo del tiempo?

Construcción del Modelo Para optimizar el análisis se construyeron vistas SQL que permitieron resumir y organizar la información.
Vistas desarrolladas

facturas_vencidas Contiene únicamente las facturas cuyo vencimiento ya ocurrió.

facturas_por_vencer Contiene las facturas con vencimiento futuro.

deuda_por_proveedor Resume la deuda total agrupada por proveedor.

Desarrollo en Power BI Posteriormente se importó la información a Power BI para construir el modelo analítico.
Transformaciones realizadas Columnas calculadas MesAño OrdenMesAño Categoria_Vencimiento Dias_Vencida

Medidas DAX Saldo Total Adeudado Saldo Vencido Facturas por Vencer Proveedores Críticos Última Actualización

Diseño del Dashboard El dashboard fue diseñado para proporcionar una visión ejecutiva de las cuentas por pagar.
Indicadores principales

Saldo Total Adeudado Permite conocer la deuda global pendiente.

Facturas Vencidas Muestra el monto actualmente vencido.

Proveedores con Deuda Indica la cantidad de proveedores con obligaciones pendientes.

Facturas por Vencer Permite anticipar compromisos futuros.

Proveedores Críticos Identifica proveedores cuya deuda supera el umbral establecido.

Visualizaciones

Evolución del Saldo Adeudado Permite analizar tendencias temporales.

Top 10 Proveedores Identifica los proveedores con mayor concentración de deuda.

Distribución del Saldo Clasifica la deuda según su estado de vencimiento.

Antigüedad de Vencimiento Permite detectar niveles de riesgo según los días transcurridos desde el vencimiento.

Top 5 Facturas Vencidas Facilita la identificación de obligaciones prioritarias.

Conclusiones
El dashboard desarrollado permite centralizar la información financiera relacionada con cuentas por pagar y facilita la detección temprana de riesgos asociados a la deuda con proveedores. Mediante la utilización de SQL Server para la preparación de datos y Power BI para la visualización, se logró construir una herramienta interactiva orientada a mejorar el control financiero y apoyar la toma de decisiones.

Modelo relacional compuesto por una tabla transaccional de facturas y tablas maestras de proveedores, formas de pago y tipos de producto. La estructura permite analizar saldos, vencimientos y obligaciones pendientes de pago mediante consultas SQL y visualizaciones en Power BI. 
Captura de la preracion de las tablas, previo a puesta en marcha en produccion. 
<img width="1069" height="1137" alt="image" src="https://github.com/user-attachments/assets/a5d19562-601c-4fb1-8f86-ff2c2c016add" />



En el transcurso de la realizacion del proyecto hubieron cambios por lo que alguna tabla no fue agregada. 

<img width="768" height="981" alt="image" src="https://github.com/user-attachments/assets/528ea0cc-1577-4e9d-b156-73896d8c02a7" />


PD: Por supuesto no fue una tarea fasil, llevo su tiempo, pero estoy muy contento de poder haberlo logrado conluyendo con la totalidad de lo propuesto desde un principio, me llevo un gran aprendizaje de la importancia de una buena limpieza de datos y una buena logica al momento de hacer las consultas y las derivaciones tanto en negro (planeacion y analisis de lo solicitado) y luego ya en produccion la puesta en marcha.

Cuentas-Por-Pagar-Dashboard/ │ ├── README.md ├── SQL/ │ ├── creacion_tablas.sql │ ├── insercion_datos.sql │ ├── vistas.sql │ ├── PowerBI/ │ ├── Dashboard.pbix │ ├── Imagenes/ │ ├── dashboard_final.png │ └── Documentacion/ └── informe_proyecto.pdf
