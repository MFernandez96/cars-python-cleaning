SET GLOBAL local_infile = 1;
USE chile;
LOAD DATA LOCAL INFILE "D:\\Basededatos\\Limpioparaunir\\chile_prt.csv" INTO TABLE chile.chileprt
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\r\n"
IGNORE 1 LINES
(`MERCADO`,
`PATENTE`,
`MARCA`,
`MODELO GENERAL`,
`MODELO`,
`MODELO/VERSION`,
`VERSION`,
`AÑO`,
`MOTOR`,
`NUMERO MOTOR`,
`VIN`,
`FLOTA 2019`,
`ORIGEN`,
`SEGMENTO`,
`SEGMENTO.1`,
`CARROCERIA`,
`TRACCION`,
`CILINDRAJE`
);