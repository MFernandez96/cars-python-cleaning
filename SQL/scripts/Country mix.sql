SELECT 
    MERCADO,
    MARCA,
    MODELO,
    `VERSION (SALES DESCRIPTION)`,
    `AÑO`,
    SEGMENTO,
    TRACCION,
    CILINDRADA,
    MOTOR,
    `IDENTIFICACION MOTOR`,
    TRANSMISION,
    COMBUSTIBLE,
    SUM(`CANTIDAD`) as CANTIDAD
FROM
    costarica.flotacostarica
WHERE LENGTH(`MARCA`) > 1 AND LENGTH(`MODELO`) > 1
GROUP BY 
    MERCADO,
    MARCA,
    MODELO,
    `VERSION (SALES DESCRIPTION)`,
    `AÑO`,
    SEGMENTO,
    TRACCION,
    CILINDRADA,
    MOTOR,
    `IDENTIFICACION MOTOR`,
    TRANSMISION,
    COMBUSTIBLE
    ORDER BY CANTIDAD DESC

INTO OUTFILE 'D:/Escritorio/aSd/costa_rica.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n'
;