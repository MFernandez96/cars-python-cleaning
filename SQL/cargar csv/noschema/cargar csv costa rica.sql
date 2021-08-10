SET GLOBAL local_infile = 1;
USE costarica;
LOAD DATA LOCAL INFILE "D:\\Basededatos\\Limpioparaunir\\costa_rica.csv" INTO TABLE noschema.flota
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\r\n"
IGNORE 1 LINES
(`MERCADO`,
`SEGMENTO`,
`SEGMENTO.1`,
`MARCA`,
`MGEN`,
`MODELO`,
`COLUMNA REFERENCIA`,
`VERSION (SALES DESCRIPTION)`,
`AÑO`,
`ORIGEN`,
`MOTOR`,
`IDENTIFICACION MOTOR`,
`CARROCERIA`,
`CILINDRADA`,
`CILINDROS`,
`DISPOSICION CILINDROS`,
`TRANSMISION`,
`TRACCION`,
`NUMERO CHASIS / VIN`,
`NUMERO MOTOR`,
`DOCUMENTO ORIGEN`,
`CANTIDAD`
)
;