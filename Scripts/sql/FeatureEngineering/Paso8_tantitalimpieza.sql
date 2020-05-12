/*Paso 8: Un poco de limpieza de Variables*/
DROP TABLE IF EXISTS TRANSFORM.NW7;
CREATE TABLE TRANSFORM.NW7 AS
SELECT FECHA, DAY_SEM, ID_OPERADOR, ID_AVION, NUM_VUELO, ORIGEN,
       DESTINO, HORASALIDAF, SALIDA_REALF, TIEMPO_TRANS_VUELO,
	   DISTANCIA_MILLAS, HORA_LLEGADA_PROGF, DELAY2, BANDERA_DELAY
FROM TRANSFORM.NW6
WHERE ID_AVION IS NOT NULL AND SALIDA_REALF IS NOT NULL
;
