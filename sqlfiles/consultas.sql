-- CONSULTAS

--
SELECT 
    pr."PRODUCTO",
    e."NATURALEZA",
    COUNT(pr."COD_PRODUCTO") AS Frecuencia,
    ROUND(SUM(e."CANTIDAD")::NUMERIC, 2) AS Cantidad_total,
    ROUND(SUM(e."VALOR_PAGADO")::NUMERIC, 2) AS Total_pagado
FROM entregas e
JOIN productos pr ON e."COD_PRODUCTO" = pr."COD_PRODUCTO"
GROUP BY 
    pr."PRODUCTO",
    e."NATURALEZA"
ORDER BY Frecuencia DESC
LIMIT 20;


--  
SELECT 
    e."NATURALEZA",
    pr."UNID_MEDIDA",
    COUNT(e."NATURALEZA") AS Frecuencia_de_entrega,
    ROUND(AVG(e."HORAS_VIAJE")::NUMERIC, 2) AS  Promedio_horas_viaje,
    ROUND(AVG(e."CANTIDAD")::NUMERIC, 2) AS Cantidad_promedio,
    ROUND((SUM(e."VALOR_PAGADO") / COUNT(e."NATURALEZA"))::NUMERIC,2) AS Promedio_pagado_por_naturaleza,
    ROUND(SUM(e."VALOR_PAGADO")::NUMERIC, 2) AS Total_valor_pagado
FROM entregas e 
JOIN sucursales s ON e."COD_SUCURSAL" = s."COD_SUCURSAL"
JOIN productos pr ON e."COD_PRODUCTO" = pr."COD_PRODUCTO"
WHERE
    s."CIUDAD_DEPART" = 'BOGOTA BOGOTA D.C.' -- AND pr."UNID_MEDIDA" = 'Kilogramos'
GROUP BY 
    e."NATURALEZA",
    pr."UNID_MEDIDA"
ORDER BY Total_valor_pagado DESC;


-- 
ALTER TABLE empresa_transporte 
ADD COLUMN "NOMBRE" VARCHAR(100) GENERATED ALWAYS AS (
    'Transporte ' || CAST("COD_EMPRESATRANSPORTE" AS VARCHAR)
) STORED;

-- 
SELECT 
    et."NOMBRE" AS Nombre_Empresa,
    SUM(e."HORAS_VIAJE") AS Total_horas_viaje,
    COUNT(e."COD_EMPRESATRANSPORTE") AS Total_entregas

FROM  entregas e
JOIN empresa_transporte et ON e."COD_EMPRESATRANSPORTE" = et."COD_EMPRESATRANSPORTE"
JOIN sucursales s ON e."COD_SUCURSAL" = s."COD_SUCURSAL"
WHERE 
    s."CIUDAD_DEPART" = 'BOGOTA BOGOTA D.C.'
GROUP BY et."NOMBRE"
ORDER BY Total_horas_viaje DESC
LIMIT 20; 

--
