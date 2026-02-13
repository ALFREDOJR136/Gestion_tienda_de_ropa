CREATE TABLE prenda (numSerie INTEGER PRIMARY KEY AUTOINCREMENT, 
                     precio DECIMAL(10,2),
                     color TEXT, 
                     talla VARCHAR,
                     tipo TEXT);

CREATE TABLE tienda (direccion VARCHAR PRIMARY KEY, 
                     nombre TEXT);

CREATE TABLE cliente (dni VARCHAR PRIMARY KEY, 
                      nombre TEXT, 
                      apellido TEXT, 
                      telefono INTEGER);

CREATE TABLE departamento (sector TEXT PRIMARY KEY,
                           nombre TEXT);

CREATE TABLE empleado (id INTEGER PRIMARY KEY,
                       salario DECIMAL(10,2), 
                       experiencia TEXT, 
                       direccion_tienda VARCHAR, 
                       sector_departamento TEXT, 
                       FOREIGN KEY (direccion_tienda) REFERENCES tienda(direccion) ON DELETE CASCADE, 
                       FOREIGN KEY (sector_departamento) REFERENCES departamento(sector) ON DELETE CASCADE);

CREATE TABLE prenda_cliente (numSerie_prenda INTEGER, 
                             dni_cliente VARCHAR,
                             numFactura INTEGER, 
                             precio DECIMAL(10,2), 
                             fechaDeCompra DATE, 
                             PRIMARY KEY (numSerie_prenda, dni_cliente), 
                             FOREIGN KEY (numSerie_prenda) REFERENCES prenda(numSerie) ON DELETE CASCADE, 
                             FOREIGN KEY (dni_cliente) REFERENCES cliente(dni) ON DELETE CASCADE);

CREATE TABLE tienda_prenda (direccion_tienda VARCHAR, 
                            numSerie_prenda INTEGER, 
                            cantidad INTEGER, 
                            PRIMARY KEY (direccion_tienda, numSerie_prenda), 
                            FOREIGN KEY (direccion_tienda) REFERENCES tienda(direccion) ON DELETE CASCADE, 
                            FOREIGN KEY (numSerie_prenda) REFERENCES prenda(numSerie) ON DELETE CASCADE);

CREATE VIEW view_empleados_baratos AS SELECT *
FROM empleado
WHERE salario < 1300.00;

CREATE VIEW view_ventas_por_cliente AS SELECT prenda_cliente.dni_cliente, prenda_cliente.numSerie_prenda, prenda_cliente.fechaDeCompra, cliente.nombre, cliente.apellido
FROM prenda_cliente
JOIN cliente
ON prenda_cliente.dni_cliente = cliente.dni;