### 2. Creación del archivo de Base de Datos (`database/schema.sql`)

Crea una carpeta llamada **`database`** en la raíz de tu repositorio, y dentro de ella crea el archivo **`schema.sql`**. Pega el siguiente script DDL adaptado para gestionar usuarios, cotizaciones y catálogos de materiales de CarpintIA:

```sql
-- Script DDL de Creación del Esquema Relacional de la Base de Datos (CarpintIA)

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    rol VARCHAR(30) DEFAULT 'carpintero',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cotizaciones (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    titulo_pieza VARCHAR(150) NOT NULL,
    descripcion_natural TEXT NOT NULL,
    detalles_calculados JSONB NOT NULL,
    costo_total DECIMAL(10, 2) NOT NULL,
    estatus VARCHAR(20) DEFAULT 'generada',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE materiales (
    id SERIAL PRIMARY KEY,
    nombre_material VARCHAR(100) NOT NULL,
    costo_unitario DECIMAL(10, 2) NOT NULL,
    unidad VARCHAR(30) NOT NULL, -- Ej. metros, piezas, kg
    actualizado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);