SELECT MERCADO, `SEGMENTO.1`, MARCA, MODELO, AÑO, MOTOR, CILINDRADA, sum(`FLOTA 2019`) as `CANTIDAD` FROM vehiculosdemotor.new_view
GROUP BY `MERCADO`, `SEGMENTO.1`, `MARCA`, `MODELO`, `AÑO`
ORDER BY `CANTIDAD` desc
WHERE `MERCADO` = "CHILE"
;