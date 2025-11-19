import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
import os

# 1. Recuperación SEGURA de variables de entorno
# Usa el nombre de la variable (DB_USER, DB_PASS, etc.) en el diccionario de conexión.
DB_USER = os.environ.get('POSTGRES_USER', 'postgres') 
DB_PASS = os.environ.get('POSTGRES_PASS') 
DB_HOST = os.environ.get('POSTGRES_HOST', '127.0.0.1')
DB_PORT = os.environ.get('POSTGRES_PORT', '5432')

# 2. Datos de conexión (apuntando a la base de datos del sistema 'postgres')
db_params = {
    # Usamos las VARIABLES que contienen los valores recuperados
    'user': DB_USER,
    'password': DB_PASS,
    'host': DB_HOST, 
    'port': DB_PORT,
    'dbname': 'postgres' # Conéctate a 'postgres' para crear otras bases de datos
}

nombre_nueva_db = "proyecto_logistica"

try:
    # 1. Establecer conexión
    print(f"Intentando conectar como usuario '{DB_USER}' a {DB_HOST}...")
    conn = psycopg2.connect(**db_params)
    
    # 2. Configurar autocommit
    conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    
    cursor = conn.cursor()
    
    # 3. Crear la base de datos
    cursor.execute(f"SELECT 1 FROM pg_catalog.pg_database WHERE datname = '{nombre_nueva_db}'")
    exists = cursor.fetchone()
    
    if not exists:
        cursor.execute(f"CREATE DATABASE {nombre_nueva_db};")
        print(f" Base de datos '{nombre_nueva_db}' creada exitosamente.")
    else:
        print(f" La base de datos '{nombre_nueva_db}' ya existe.")

except Exception as e:
    print(f" Error al conectar o crear la DB: {e}")

finally:
    if 'cursor' in locals() and cursor is not None: cursor.close()
    if 'conn' in locals() and conn is not None: conn.close()