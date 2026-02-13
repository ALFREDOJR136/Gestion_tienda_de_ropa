# 🛍️ Sistema de Gestión de Tienda de Ropa

Sistema de base de datos para la gestión integral de una cadena de tiendas de ropa, desarrollado como práctica de la asignatura de Bases de Datos.

## 📋 Descripción

Este proyecto implementa una base de datos relacional completa para gestionar las operaciones de una cadena de tiendas de ropa llamada "Shoeface". El sistema permite administrar inventarios, ventas, empleados, clientes y la relación entre múltiples tiendas.

## 🗂️ Estructura del Proyecto

```
Gestion_tienda_de_ropa/
│
├── creacion.sql     # Esquema de la base de datos (DDL)
├── carga.sql        # Datos de ejemplo (DML - INSERT)
├── consultas.sql    # Consultas y operaciones (DML - SELECT, UPDATE, DELETE)
└── README.md        # Este archivo
```

## 📊 Modelo de Datos

### Tablas Principales

#### 1. **prenda** (Prendas de vestir)
- `numSerie` (PK): Número de serie único
- `precio`: Precio de la prenda
- `color`: Color de la prenda
- `talla`: Talla (S, M, L, XL, 2XL)
- `tipo`: Tipo de prenda (camiseta, pantalón, chaqueta, calcetines)

#### 2. **tienda** (Tiendas)
- `direccion` (PK): Dirección de la tienda
- `nombre`: Nombre comercial de la tienda

#### 3. **cliente** (Clientes)
- `dni` (PK): DNI del cliente
- `nombre`: Nombre del cliente
- `apellido`: Apellido del cliente
- `telefono`: Número de teléfono

#### 4. **departamento** (Departamentos)
- `sector` (PK): Identificador del sector
- `nombre`: Nombre del departamento (contabilidad, atención al cliente, control de calidad)

#### 5. **empleado** (Empleados)
- `id` (PK): Identificador del empleado
- `salario`: Salario del empleado
- `experiencia`: Nivel de experiencia (baja, media, alta, muy alta)
- `direccion_tienda` (FK): Tienda donde trabaja
- `sector_departamento` (FK): Departamento al que pertenece

#### 6. **prenda_cliente** (Ventas)
Tabla de relación que registra las compras:
- `numSerie_prenda` (PK, FK)
- `dni_cliente` (PK, FK)
- `numFactura`: Número de factura
- `precio`: Precio de venta
- `fechaDeCompra`: Fecha de la compra

#### 7. **tienda_prenda** (Inventario)
Tabla de relación para el inventario por tienda:
- `direccion_tienda` (PK, FK)
- `numSerie_prenda` (PK, FK)
- `cantidad`: Stock disponible

### Vistas

- **view_empleados_baratos**: Empleados con salario inferior a 1300€
- **view_ventas_por_cliente**: Ventas detalladas con información completa del cliente

## 🚀 Uso

### 1. Crear la Base de Datos

```bash
sqlite3 tienda_ropa.db < creacion.sql
```

Este comando crea todas las tablas, relaciones y vistas del sistema.

### 2. Cargar Datos de Prueba

```bash
sqlite3 tienda_ropa.db < carga.sql
```

Carga datos de ejemplo que incluyen:
- 10 prendas de diferentes tipos y tallas
- 3 tiendas (Gran Vía, Fuencarral, Castellana)
- 10 clientes
- 3 departamentos
- 10 empleados
- 10 registros de ventas
- Inventario distribuido entre las tiendas

### 3. Ejecutar Consultas

```bash
sqlite3 tienda_ropa.db < consultas.sql
```

## 📌 Características del Sistema

✅ Gestión de múltiples tiendas  
✅ Control de inventario descentralizado  
✅ Registro de ventas con historial  
✅ Gestión de empleados por departamento y tienda  
✅ Base de datos de clientes  
✅ Integridad referencial garantizada  
✅ Consultas complejas con JOINs y subconsultas  
✅ Agregaciones y estadísticas  

## 📚 Conceptos Aplicados

- **DDL** (Data Definition Language): CREATE TABLE, CREATE VIEW
- **DML** (Data Manipulation Language): INSERT, SELECT, UPDATE, DELETE
- **JOINs**: Relaciones entre múltiples tablas
- **Agregaciones**: AVG(), SUM(), MAX()
- **Subconsultas**: Consultas anidadas
- **Cláusulas**: WHERE, HAVING, GROUP BY, LIMIT
- **Restricciones**: PRIMARY KEY, FOREIGN KEY, CASCADE