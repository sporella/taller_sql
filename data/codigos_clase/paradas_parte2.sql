SELECT * FROM paradas_transantiago;

SELECT * FROM comunas;

SELECT *, COUNT(stop_id) AS cuenta
FROM paradas_transantiago;

SELECT cut, COUNT(stop_id) AS cuenta
FROM paradas_transantiago;

SELECT cut, COUNT(stop_id) AS cuenta
FROM paradas_transantiago
GROUP BY cut;

SELECT * from paradas_transantiago
LEFT JOIN comunas
ON paradas_transantiago.cut = comunas.cut;

SELECT comunas.comuna, 
	 comunas.pobl_total,
     COUNT(paradas_transantiago.stop_id) AS cuenta_paradas
from paradas_transantiago
LEFT JOIN comunas
ON paradas_transantiago.cut = comunas.cut
GROUP BY paradas_transantiago.cut;comunas;

SELECT comunas.comuna, 
	 comunas.pobl_total,
     COUNT(paradas_transantiago.stop_id) AS cuenta_paradas,
     COUNT(paradas_transantiago.stop_id) / CAST(comunas.pobl_total AS FLOAT) AS razon
from paradas_transantiago
LEFT JOIN comunas
ON paradas_transantiago.cut = comunas.cut
GROUP BY paradas_transantiago.cut;

SELECT comunas.comuna, 
	 comunas.pobl_total,
     COUNT(paradas_transantiago.stop_id) AS cuenta_paradas,
     COUNT(paradas_transantiago.stop_id) / CAST(comunas.pobl_total AS FLOAT) AS razon,
     COUNT(paradas_transantiago.stop_id) / CAST(comunas.pobl_total/1000 AS FLOAT) AS razon_cada_mil
from paradas_transantiago
LEFT JOIN comunas
ON paradas_transantiago.cut = comunas.cut
GROUP BY paradas_transantiago.cut;

SELECT comunas.comuna, 
	 comunas.pobl_total,
     COUNT(paradas_transantiago.stop_id) AS cuenta_paradas,
     ROUND(COUNT(paradas_transantiago.stop_id) / CAST(comunas.pobl_total/1000 AS FLOAT),2) AS razon_cada_mil
from paradas_transantiago
LEFT JOIN comunas
ON paradas_transantiago.cut = comunas.cut
GROUP BY paradas_transantiago.cut;

SELECT comunas.comuna, 
	 comunas.pobl_total,
     COUNT(paradas_transantiago.stop_id) AS cuenta_paradas,
     ROUND(COUNT(paradas_transantiago.stop_id) / CAST(comunas.pobl_total/1000 AS FLOAT),2) AS razon_cada_mil
from paradas_transantiago
LEFT JOIN comunas
ON paradas_transantiago.cut = comunas.cut
GROUP BY paradas_transantiago.cut
ORDER BY razon_cada_mil DESC;
