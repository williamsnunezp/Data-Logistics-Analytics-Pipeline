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

## 🔧 Desarrollo y Componentes del Pipeline

A continuación se detalla el flujo completo aplicado en este proyecto, desde la normalización inicial del dataset hasta su carga y modelado dentro de PostgreSQL para análisis posteriores en Power BI.

### 1️⃣ Normalización de datos (Excel / Power Query)

Componente:
Limpieza, estandarización y separación lógica del dataset plano.

Desarrollo:
- Se depuraron columnas inconsistentes.
- Se separaron entidades como transportistas, empresas, viajes, ciudades, etc.
- Se detectaron llaves primarias y llaves foráneas.
- Se dejó la estructura lista para migrar a PostgreSQL.

<img src="imagenes/normalizacion.png" alt="Texto alternativo" width="650"/>

---

### 2️⃣ Migración y conexión Python → PostgreSQL

Componente:
Carga automática de datos a la base de datos relacional.

Desarrollo:

- Se creó una base de datos nueva en PostgreSQL desde Python usando psycopg2.
- Se leyeron las hojas del archivo Excel normalizado.
- Se crearon tablas base e insertaron registros.

📌 Resultado: Base de datos poblada con las tablas normalizadas.

---

### 3️⃣ Modelado relacional en PostgreSQL (SQL)

Componente:
Creación del modelo estrella, claves, relaciones y reglas de integridad.

Desarrollo:

- Se generaron PRIMARY KEY para cada tabla.
- Se crearon FOREIGN KEY según las relaciones del modelo lógico.
- Se conectaron las tablas en un esquema tipo estrella.
- Se validaron las relaciones mediante el diagrama ER en la extensión de PostgreSQL para VS Code.

<img src="imagenes/esquemaER.png" alt="Texto alternativo" width="350"/>

---

### 4️⃣ Columnas calculadas y automatización (SQL)

Descripción:
Optimización del modelo mediante cálculos derivados y preparación para automatizar procesos futuros.

Acciones realizadas:

- Creación de columnas calculada para indicadores relevantes.
- Ajustes adicionales de negocio para métricas.
- Diseño inicial (planeado) de un procedimiento almacenado que agilice la inserción de nuevos registros manteniendo integridad referencial.

📌 Resultado: Modelo relacional robusto y listo para análisis escalables.

---

###  5. Integración con Power BI (Objetivo Final)

Descripción:
Conexión del modelo relacional hacia Power BI para análisis visual y creación del dashboard final.

Tareas previstas:

- Conexión directa a PostgreSQL desde Power BI.
- Creación de una tabla calendario (Date Table).
- Implementación de medidas y KPIs con DAX.
- Construcción del dashboard analítico de tiempos logísticos.

📌 Estado: En preparación.

---

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

---

## 🚀 Estado Actual
Normalización completada y tablas conectadas en Power Pivot. En progreso: carga final hacia PostgreSQL y preparación para dashboards analíticos.
