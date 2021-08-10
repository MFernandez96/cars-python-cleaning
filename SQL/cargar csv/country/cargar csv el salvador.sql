SET GLOBAL local_infile = 1;
USE elsalvador;
LOAD DATA LOCAL INFILE "D:\\Basededatos\\Limpioparaunir\\elsalvador.csv" INTO TABLE elsalvador.flotaelsalvador
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\n"
IGNORE 1 LINES
(`MERCADO`,
`SEGMENTO`,
`SEGMENTO.1`,
`MARCA`,
`MGEN`,
`MODELO`,
`MODELO/VERSION`,
`VERSION (SALES DESCRIPTION)`,
`AÑO`,
`FLOTA 2019`,
`NUMERO CHASIS / VIN`,
`MOTOR`,
`NUMERO MOTOR`,
`PROVINCIA`,
`LOCALIDAD`,
`ORIGEN`,
`CILINDRADA`,
`TRACCION`)
    ;