-- Agregar una columna generada a la tabla empresa_trans

ALTER TABLE empresa_trans 
ADD COLUMN "NOMBRE" VARCHAR(100) GENERATED ALWAYS AS (
    'Transporte ' || CAST("COD_EMPRESATRANSPORTE" AS VARCHAR)
) STORED;


