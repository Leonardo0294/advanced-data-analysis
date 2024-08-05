import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sqlalchemy import create_engine

# Configuración de la conexión a MySQL
db_config = {
    'user': 'root',  
    'password': '',  
    'host': 'localhost',
    'database': 'CompanyData'
}

# URI de conexión
db_uri = f"mysql+mysqlconnector://{db_config['user']}:{db_config['password']}@{db_config['host']}/{db_config['database']}"

# motor de SQLAlchemy
engine = create_engine(db_uri)

# Leer datos desde MySQL a un DataFrame
query = "SELECT * FROM EmployeePerformance"
df = pd.read_sql(query, engine)

# Muestra los primeros registros del DataFrame para ver los datos
print("Primeros registros del DataFrame:")
print(df.head())

# Verificar los valores únicos en la columna 'department'
print("Valores únicos en 'department':")
print(df['department'].unique())

# Análisis de Datos
print("Estadísticas por Departamento:")
stats = df.groupby('department').agg(
    performance_score_mean=('performance_score', 'mean'),
    performance_score_median=('performance_score', 'median'),
    performance_score_std=('performance_score', 'std'),
    salary_mean=('salary', 'mean'),
    salary_median=('salary', 'median'),
    salary_std=('salary', 'std'),
    num_employees=('id', 'count')
).reset_index()
print(stats)

# Calcular correlaciones
correlation_years_performance = df['years_with_company'].corr(df['performance_score'])
correlation_salary_performance = df['salary'].corr(df['performance_score'])
print(f"Correlación entre years_with_company y performance_score: {correlation_years_performance}")
print(f"Correlación entre salary y performance_score: {correlation_salary_performance}")

# Visualización de Datos
# Histograma del performance_score para cada departamento
plt.figure(figsize=(12, 6))
for dept in df['department'].unique():
    subset = df[df['department'] == dept]
    plt.hist(subset['performance_score'], bins=20, alpha=0.5, label=dept)
plt.title('Histograma del Performance Score por Departamento')
plt.xlabel('Performance Score')
plt.ylabel('Frecuencia')
plt.legend()
plt.show()

# Gráfico de dispersión de years_with_company vs. performance_score
plt.figure(figsize=(12, 6))
plt.scatter(df['years_with_company'], df['performance_score'])
plt.title('Gráfico de Dispersión: Years with Company vs. Performance Score')
plt.xlabel('Years with Company')
plt.ylabel('Performance Score')
plt.show()

# Gráfico de dispersión de salary vs. performance_score
plt.figure(figsize=(12, 6))
plt.scatter(df['salary'], df['performance_score'])
plt.title('Gráfico de Dispersión: Salary vs. Performance Score')
plt.xlabel('Salary')
plt.ylabel('Performance Score')
plt.show()
