# Data-Logistics-Analytics

Proyecto orientado al análisis y procesamiento de datos, utilizando Excel, Python, PostgreSQL y Power BI. Este repositorio documenta el flujo completo desde la normalización del dataset original hasta su integración en una base de datos relacional para posteriores análisis e informes mediante la creacion de un dashboard.

Este proyecto simula los datos de una empresa logistica (sobre diversos datos de tiempos logísticos) que cuenta con sucursales en la nacion de colombia teniendo como socio a distribuidoras, los datos fueron sacados del portal de datos abiertos del gobierno colombiano: https://www.datos.gov.co/Transporte/Tiempos-Log-sticos-de-cada-viaje-de-veh-culos-de-c/tfrd-amb4/about_data

## 📌 Objetivos del Proyecto
- Transformar un dataset logístico originalmente plano en un conjunto de tablas normalizadas.
- Conectar y cargar estas tablas desde hacia PostgreSQL utilizando Python.
- Preparar la estructura necesaria para futuros análisis, dashboards y automatizaciones.

## 🔧 Tecnologías Utilizadas
- **Python** (pandas, SQLAlchemy, psycopg2)
- **PostgreSQL**
- **Excel / Power Query**
- **SQL**
- **GitHub** para control de versiones y documentación

## 🗂️ Componentes del Pipeline
### 1. Normalización de datos en Excel (Power Query)
- Limpieza, estandarización y separación del dataset en tablas lógicas (transportistas, entregas, productos, origen/destino, etc.).
- Identificación de claves primarias y relaciones.

### 2. Conexión Python ↔ Excel ↔ PostgreSQL
- Lectura del archivo Excel estructurado.
- Conexion con PostgreSQL y creación automática de tablas.
- Crear de claves primarias y foraneas.
- Modelado de datos (relacion entre tablas) tipo estrella.

### 3. Conexion PostgreSQL ↔ Power BI
- Crear la conexion a la base de datos.
- Automatizar la integracion de nuevos datos y los procesos de transformacion.

### 4. Preparación para Análisis
- Verificación de las correctas relaciones mediante diagramas.
- Estructura apta para construir dashboards, consultas avanzadas o KPIs.

## 📁 Estructura del Repositorio


## 🚀 Estado Actual
Normalización completada y tablas conectadas en Power Pivot. En progreso: carga final hacia PostgreSQL y preparación para dashboards analíticos.
