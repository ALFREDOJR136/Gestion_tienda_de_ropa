INSERT INTO prenda VALUES(1947,25.98999999999999844,'verde','2XL','chaqueta');
INSERT INTO prenda VALUES(2756,35.95000000000000285,'verde','M','calcetines');
INSERT INTO prenda VALUES(2856,17.5,'rojo','XL','camiseta');
INSERT INTO prenda VALUES(3846,15.34999999999999965,'morado','2XL','chaqueta');
INSERT INTO prenda VALUES(3856,9.99000000000000021,'amarillo','S','camiseta');
INSERT INTO prenda VALUES(4757,60.90999999999999659,'azul','L','pantalon');
INSERT INTO prenda VALUES(7574,80.28000000000000113,'amarillo','L','camiseta');
INSERT INTO prenda VALUES(9274,40.99000000000000198,'azul','M','pantalon');
INSERT INTO prenda VALUES(9285,25.85000000000000142,'negro','XL','pantalon');
INSERT INTO prenda VALUES(9375,76.96999999999999887,'rojo','L','chaqueta');

INSERT INTO tienda VALUES('gran via 4','shoefaceGV');
INSERT INTO tienda VALUES('fuencarral 23','shoefaceF');
INSERT INTO tienda VALUES('castellana 42','shoefaceC');

INSERT INTO cliente VALUES('18462846S','Maximo','Dutti',693739573);
INSERT INTO cliente VALUES('38563967T','Margaret','Astor',638569476);
INSERT INTO cliente VALUES('86285638A','Emidio','Tucci',674658375);
INSERT INTO cliente VALUES('12123142R','Gonzalo','Lopez',645632834);
INSERT INTO cliente VALUES('35423565H','Pablo','Hernandez',612343235);
INSERT INTO cliente VALUES('35432344L','Alejandro','Lillo',676432133);
INSERT INTO cliente VALUES('53734234N','Daniel','Candela',697421456);
INSERT INTO cliente VALUES('35264653M','Javier','Colina',676545334);
INSERT INTO cliente VALUES('35245234X','Tomas','Garcia',665534323);
INSERT INTO cliente VALUES('41353466P','Fernando','Sanchez',643543332);

INSERT INTO departamento VALUES('tres','contabilidad');
INSERT INTO departamento VALUES('cinco','atencion al cliente');
INSERT INTO departamento VALUES('cuarto','control de calidad');

INSERT INTO empleado VALUES(20947,1200.369999999999891,'alta','catellana 42','cuatro');
INSERT INTO empleado VALUES(28467,998.980000000000018,'baja','catellana 42','cuatro');
INSERT INTO empleado VALUES(28826,1123.670000000000073,'media','gran via 4','cinco');
INSERT INTO empleado VALUES(36575,1100.36999999999989,'media','fuencarral 23','cinco');
INSERT INTO empleado VALUES(47264,1600,'muy alta','gran via 4','cinco');
INSERT INTO empleado VALUES(73648,800.3799999999999955,'baja','gran via 4','tres');
INSERT INTO empleado VALUES(76937,1200.279999999999973,'alta','fuencarral 23','cuatro');
INSERT INTO empleado VALUES(83850,903.3700000000000045,'baja','catellana 42','cuatro');
INSERT INTO empleado VALUES(86736,1284.279999999999973,'alta','fuencarral 23','tres');
INSERT INTO empleado VALUES(94764,1500.25,'muy alta','gran via 4','tres');

INSERT INTO prenda_cliente VALUES(1947,'18462846S',1,38.38000000000000255,'2023-07-15');
INSERT INTO prenda_cliente VALUES(9274,'38563967T',2,23.67999999999999972,'2023-09-28');
INSERT INTO prenda_cliente VALUES(2856,'86285638A',3,274.2699999999999819,'2023-06-13');
INSERT INTO prenda_cliente VALUES(2756,'12123142R',4,285.3600000000000136,'2023-02-20');
INSERT INTO prenda_cliente VALUES(3846,'35423565H',5,496.2799999999999728,'2023-03-24');
INSERT INTO prenda_cliente VALUES(3856,'35432344L',6,684.1900000000000546,'2023-04-15');
INSERT INTO prenda_cliente VALUES(4757,'53734234N',7,396.589999999999975,'2023-05-17');
INSERT INTO prenda_cliente VALUES(7574,'35264653M',8,183.2899999999999921,'2023-12-19');
INSERT INTO prenda_cliente VALUES(9375,'35245234X',10,1784.369999999999891,'2023-11-25');
INSERT INTO prenda_cliente VALUES(9285,'41353466P',9,1783.660000000000081,'2023-10-14');

INSERT INTO tienda_prenda VALUES('gran via 4',1947,3);
INSERT INTO tienda_prenda VALUES('fuencarral 23',9274,2);
INSERT INTO tienda_prenda VALUES('castellana 42',2856,5);
INSERT INTO tienda_prenda VALUES('castellana 42',2756,100);
INSERT INTO tienda_prenda VALUES('gran via 4',3846,248);
INSERT INTO tienda_prenda VALUES('fuencarral 23',3856,293);
INSERT INTO tienda_prenda VALUES('castellana 42',4757,183);
INSERT INTO tienda_prenda VALUES('gran via 4',7574,169);
INSERT INTO tienda_prenda VALUES('fuencarral 23',9375,285);
INSERT INTO tienda_prenda VALUES('castellana 42',9285,937);