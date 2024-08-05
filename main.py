import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
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

# Motor de SQLAlchemy
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

# Tratamiento de datos faltantes
df = df.dropna(subset=['performance_score', 'department', 'years_with_company', 'salary'])

# Verificar resumen de 'performance_score'
print("Resumen de 'performance_score':")
print(df['performance_score'].describe())

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
# Configuración de estilo de gráficos
sns.set(style="whitegrid")

# Histograma del performance_score para todo el conjunto de datos
plt.figure(figsize=(12, 6))
sns.histplot(df['performance_score'].dropna(), bins=20, kde=True, color='skyblue')
plt.title('Histograma del Performance Score para Todo el Conjunto de Datos')
plt.xlabel('Performance Score')
plt.ylabel('Frecuencia')
plt.show()

# Histograma del performance_score para cada departamento en subplots
def plot_histograms(df):
    """Genera histogramas del performance_score para cada departamento."""
    fig, axes = plt.subplots(nrows=2, ncols=3, figsize=(18, 10), sharey=True)
    departments = df['department'].unique()
    for ax, dept in zip(axes.flat, departments):
        subset = df[df['department'] == dept]
        if len(subset['performance_score'].dropna()) > 0:
            sns.histplot(subset['performance_score'].dropna(), bins=20, kde=True, ax=ax)
            ax.set_title(f'{dept} - Performance Score')
            ax.set_xlabel('Performance Score')
            ax.set_ylabel('Frecuencia')
        else:
            ax.set_visible(False)
    plt.tight_layout()
    plt.show()

# Llamada a la función para generar histogramas
plot_histograms(df)

# Gráfico de caja del performance_score por departamento
plt.figure(figsize=(12, 6))
sns.boxplot(x='department', y='performance_score', data=df)
plt.title('Distribución del Performance Score por Departamento')
plt.xlabel('Department')
plt.ylabel('Performance Score')
plt.show()

# Gráfico de dispersión de years_with_company vs. performance_score
plt.figure(figsize=(12, 6))
sns.scatterplot(x='years_with_company', y='performance_score', data=df, color='blue')
plt.title('Gráfico de Dispersión: Years with Company vs. Performance Score')
plt.xlabel('Years with Company')
plt.ylabel('Performance Score')
plt.show()

# Gráfico de dispersión de salary vs. performance_score
plt.figure(figsize=(12, 6))
sns.scatterplot(x='salary', y='performance_score', data=df, color='green')
plt.title('Gráfico de Dispersión: Salary vs. Performance Score')
plt.xlabel('Salary')
plt.ylabel('Performance Score')
plt.show()
