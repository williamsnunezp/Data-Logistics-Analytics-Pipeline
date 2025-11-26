-- CONSULTAS

-- 
SELECT 
    e."NATURALEZA",
    AVG(e."HORAS_CARGUE" + e."HORAS_ESPERA_CARGUE") AS  Promedio_total_cargue,
    AVG(e."HORAS_DESCARGUE" + e."HORAS_ESPERA_CARGUE") AS Promedio_total_descargue,
    SUM(e."VALOR_PAGADO") AS Total_valor_pagado
FROM entregas e 
JOIN sucursales s ON e."COD_SUCURSAL" = s."COD_SUCURSAL"
WHERE
    s."CIUDAD_DEPART" = 'BOGOTA BOGOTA D.C.'
GROUP BY e."NATURALEZA"
ORDER BY Promedio_total_cargue DESC;

--
SELECT 
    e."NATURALEZA",
    AVG(e."HORAS_CARGUE" + e."HORAS_ESPERA_CARGUE") AS  Promedio_total_cargue,
    AVG(e."HORAS_DESCARGUE" + e."HORAS_ESPERA_CARGUE") AS Promedio_total_descargue,
    SUM(e."VALOR_PAGADO") AS Total_valor_pagado
FROM entregas e 
JOIN sucursales s ON e."COD_SUCURSAL" = s."COD_SUCURSAL"
WHERE
    s."CIUDAD_DEPART" <> 'BOGOTA BOGOTA D.C.'
GROUP BY e."NATURALEZA"
ORDER BY Promedio_total_cargue DESC;


-- Agregar una columna generada a la tabla empresa_trans
ALTER TABLE empresa_transporte 
ADD COLUMN "NOMBRE" VARCHAR(100) GENERATED ALWAYS AS (
    'Transporte ' || CAST("COD_EMPRESATRANSPORTE" AS VARCHAR)
) STORED;

-- 
SELECT 
    et."NOMBRE",
    AVG(e."HORAS_VIAJE") as Promedio_horas_viaje

FROM entregas e
JOIN empresa_transporte et ON e."COD_EMPRESATRANSPORTE" = et."COD_EMPRESATRANSPORTE"
JOIN sucursales s ON e."COD_SUCURSAL" = s."COD_SUCURSAL"
WHERE 
    s."CIUDAD_DEPART" = 'BOGOTA BOGOTA D.C.'
GROUP BY et."NOMBRE"
ORDER BY Promedio_horas_viaje ASC;