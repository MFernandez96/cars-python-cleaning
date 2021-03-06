CREATE VIEW `combinacioneselsalvador` AS
SELECT MERCADO,`SEGMENTO.1`, MARCA, MODELO, `MODELO/VERSION`, `AÑO`, sum(`FLOTA 2019`) as 'CANTIDAD'
FROM elsalvador.flotaelsalvador
GROUP BY MERCADO,`SEGMENTO.1`, MARCA, MODELO, `MODELO/VERSION`, `AÑO`
order by CANTIDAD DESC;