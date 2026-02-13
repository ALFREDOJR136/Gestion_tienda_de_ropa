UPDATE prenda SET precio = 17.5 WHERE numSerie = 2856;

UPDATE empleado SET salario = salario + 100 WHERE sector_departamento = 'cinco';

UPDATE tienda_prenda SET cantidad = 76 WHERE direccion_tienda= 'castellana 42';

SELECT e.id, e.salario, t.nombre AS nombre_tienda, d.nombre AS nombre_sector
FROM empleado AS e
JOIN tienda AS t ON e.direccion_tienda = t.direccion
JOIN departamento AS d ON e.sector_departamento = d.sector;

SELECT pc.dni_cliente, AVG(pc.precio) AS gasto_promedio
FROM prenda_cliente AS pc
GROUP BY pc.dni_cliente HAVING AVG(pc.precio) > 200;

SELECT d.nombre AS departamento, SUM(e.salario) AS total_salarios
FROM empleado AS e
JOIN departamento AS d ON e.sector_departamento = d.sector GROUP BY d.nombre LIMIT 2;

SELECT * FROM tienda WHERE direccion IN(SELECT direccion_tienda FROM tienda_prenda WHERE numSerie_prenda = 1947);

SELECT * FROM empleado WHERE salario = (SELECT MAX(salario) FROM empleado);

DELETE FROM cliente WHERE dni = '12123142R';

DELETE FROM empleado WHERE experiencia = 'baja' AND salario < 950;

DELETE FROM tienda_prenda WHERE cantidad < (SELECT AVG(cantidad) FROM tienda_prenda WHERE direccion_tienda = 'gran via 4');