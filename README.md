# Data-Logistics-Analytics

Proyecto orientado al análisis y procesamiento de datos logísticos utilizando Python, Excel y PostgreSQL. Este repositorio documenta el flujo completo desde la normalización del dataset original hasta su integración en una base de datos relacional para posteriores análisis e informes.

## 📌 Objetivos del Proyecto
- Transformar un dataset logístico originalmente plano en un conjunto de tablas normalizadas.
- Conectar y cargar estas tablas desde Excel hacia PostgreSQL utilizando Python.
- Preparar la estructura necesaria para futuros análisis, dashboards y automatizaciones.

## 🔧 Tecnologías Utilizadas
- **Python** (pandas, SQLAlchemy, psycopg2)
- **PostgreSQL**
- **Excel / Power Pivot**
- **Jupyter Notebooks**
- **GitHub** para control de versiones y documentación

## 🗂️ Componentes del Pipeline
### 1. Normalización de Datos
- Limpieza, estandarización y separación del dataset en tablas lógicas (vehículos, viajes, clientes, origen/destino, etc.).
- Identificación de claves primarias y relaciones.

### 2. Conexión Python ↔ Excel ↔ PostgreSQL
- Lectura del archivo Excel estructurado.
- Creación automática de tablas (si no existen) en PostgreSQL.
- Inserción de datos normalizados desde pandas hacia la base de datos.

### 3. Preparación para Análisis
- Verificación de relaciones mediante diagramas.
- Estructura apta para construir dashboards o consultas avanzadas.

## 📁 Estructura del Repositorio
- `/data` – Dataset limpio en Excel.
- `/notebooks` – Procesamiento y carga con Python.
- `/docs` – Documentación del proceso.
- `README.md` – Información general del proyecto.

## 🚀 Estado Actual
Normalización completada y tablas conectadas en Power Pivot. En progreso: carga final hacia PostgreSQL y preparación para dashboards analíticos.
