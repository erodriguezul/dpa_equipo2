/*Paso 31: Generacion de etiquetas y Limpieza*/
DROP TABLE IF EXISTS TRANSFORM.NWFINAL;
CREATE TABLE TRANSFORM.NWFINAL AS
SELECT FECHA, DAY_SEM, ID_OPERADOR, ID_AVION, NUM_VUELO, ORIGEN, DESTINO, HORASALIDAF, SALIDA_REALF,
TIEMPO_TRANS_VUELO, DISTANCIA_MILLAS, HORA_LLEGADA_PROGF, DELAY, BANDERA_DELAY, RANK_CONTADOR AS COUNT,
MAX, NVUE_FALT, IND_RETRASO1, IND_RETRASO2, IND_RETRASO3, EFECTO, SUM_EFECTOS_DOMINO, TOT_SUM_DOMINO,
VUELOS_AFECTADOS, EXTRACT(YEAR FROM FECHA) AS YEAR,
CASE WHEN DELAY >= 20 AND VUELOS_AFECTADOS >= 2 THEN 1 ELSE 0 END AS ETIQUETA1
FROM TRANSFORM.NW28
;
