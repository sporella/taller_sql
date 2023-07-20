SELECT * FROM terremotos;

SELECT title, date_time, magnitude, country FROM terremotos;

SELECT title, date_time, magnitude, country FROM terremotos
WHERE country = 'Chile';

SELECT title, date_time, magnitude, country FROM terremotos
WHERE title LIKE 'Chile';

SELECT title, date_time, magnitude, country FROM terremotos
WHERE title LIKE '%Chile%';

SELECT title, date_time, magnitude, country FROM terremotos
WHERE title LIKE '%Chile"';

SELECT title, date_time, magnitude, country FROM terremotos
WHERE title LIKE '%Chile"'
ORDER BY magnitude DESC;

SELECT title, date_time, magnitude, country FROM terremotos
WHERE title LIKE '%Chile"'
ORDER BY date_time ASC; -- esto no ordena por fecha, ordena por número

SELECT title, date_time, magnitude, country FROM terremotos
WHERE country IN('Chile', 'Japan')
ORDER BY date_time ASC;

SELECT title, date_time, magnitude, country FROM terremotos
WHERE title LIKE '%Chile%Japan%' -- esto no funciona, probar de otras formas
ORDER BY date_time ASC;

SELECT title, date_time, magnitude, country 
FROM terremotos
WHERE (title like'%Chile"') or (title like '%Japan"');

SELECT * FROM terremotos;

SELECT title, date_time, magnitude, country FROM terremotos
WHERE title LIKE '%Chile"'
ORDER BY DATE(date_time) DESC; -- Así se arregla para ordenar por fecha