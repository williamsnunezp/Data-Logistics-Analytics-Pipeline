# Data-Logistics-Analytics

Proyecto orientado al análisis y procesamiento de datos, utilizando Excel, Python, PostgreSQL y Power BI. Este repositorio documenta el flujo completo desde la normalización del dataset original hasta su integración en una base de datos relacional para posteriores análisis e informes mediante la creacion de un dashboard.

Este proyecto simula los datos de una empresa logistica (sobre diversos datos de tiempos logísticos) que cuenta con sucursales en la nacion de colombia teniendo como socio a distribuidoras, los datos fueron sacados del portal de datos abiertos del gobierno colombiano: 

➡️ https://www.datos.gov.co/Transporte/Tiempos-Log-sticos-de-cada-viaje-de-veh-culos-de-c/tfrd-amb4/about_data

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

### 1️⃣ Normalización de datos (Excel + Power Query)

- Limpieza y estandarización de variables.  
- Separación del dataset en entidades lógicas (productos, vehículos, empresas, ciudades, viajes, etc.).  
- Identificación de **claves primarias** y definición de relaciones.  
- Generación del archivo Excel con múltiples hojas listas para importar.

---

### 2️⃣ Integración Python → PostgreSQL

- Lectura del archivo Excel normalizado.  
- Conexión a la base de datos utilizando SQLAlchemy y psycopg2.  
- Creación automática de tablas.  
- Inserción de datos con control de tipos y validaciones.  
- Aplicación de **claves foráneas** para conectar las tablas en un modelo tipo **estrella**.

---

### 3️⃣ Conexión PostgreSQL → Power BI

- Creación del modelo de datos utilizando el motor de PostgreSQL.  
- Establecimiento de relaciones correctas para análisis.  
- Preparación de medidas y KPIs.  
- Pipeline preparado para automatizar cargas futuras.

---

### 4️⃣ Preparación para Análisis y Dashboards

- Validación del modelo relacional mediante diagramas ER.  
- Estructura compatible con dashboards, informes y exploraciones de datos.  
- Base sólida para análisis temporales, logísticos y de eficiencia operativa.

## 📁 Estructura del Repositorio
Data-Logistics-Analytics-Pipeline/
│
├── data/ # Archivo Excel normalizado (dataset limpio y dividido)
│ └── logisticData.xlsx
│
├── pythonFiles/ # Scripts de conexión, carga y validación hacia PostgreSQL
│ └── *.py
│
├── sqlFiles/ # Consultas SQL, creación de tablas y claves foráneas
│ └── *.sql
│
├── imagenes/ # Imágenes utilizadas en el README o documentación
│ └── *.png / *.jpg
│
├── powerbi/ # (Pendiente) Archivo Power BI y assets internos
│ └── * (modelos pbix desglosados)
│
└── README.md # Documentación principal del proyecto


## 🚀 Estado Actual
Normalización completada y tablas conectadas en Power Pivot. En progreso: carga final hacia PostgreSQL y preparación para dashboards analíticos.
