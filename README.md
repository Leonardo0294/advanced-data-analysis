# Refactorización de Análisis de Datos con POO

Este repositorio contiene un proyecto de análisis de datos que ha sido refactorizado utilizando principios de Programación Orientada a Objetos (POO). El objetivo de este proyecto es mejorar la estructura y la organización del código al aplicar POO, facilitando su mantenimiento y extensibilidad.

## Descripción

El proyecto realiza las siguientes tareas:
1. **Carga de Datos**: Conexión a una base de datos MySQL y carga de datos desde una tabla específica.
2. **Procesamiento de Datos**: Limpieza y análisis estadístico de los datos cargados.
3. **Visualización de Datos**: Generación de gráficos para la visualización de los datos procesados.

## Estructura del Código

El código está organizado en tres clases principales:

1. **DataLoader**: Encargada de la conexión a la base de datos y la carga de datos.
2. **DataProcessor**: Responsable del procesamiento de datos, incluyendo limpieza y análisis estadístico.
3. **DataVisualizer**: Maneja la generación de gráficos para la visualización de los datos.

### DataLoader

- **Métodos**:
  - `__init__(db_config)`: Inicializa la conexión a la base de datos.
  - `create_engine()`: Crea un motor de conexión a la base de datos.
  - `load_data(query)`: Carga datos desde la base de datos utilizando una consulta SQL.

### DataProcessor

- **Métodos**:
  - `__init__(df)`: Inicializa con un DataFrame.
  - `clean_data()`: Limpia los datos eliminando filas con valores faltantes en columnas específicas.
  - `get_summary()`: Devuelve un resumen estadístico de la columna 'performance_score'.
  - `get_statistics()`: Calcula estadísticas agrupadas por departamento.
  - `calculate_correlations()`: Calcula correlaciones entre variables.

### DataVisualizer

- **Métodos**:
  - `__init__(df)`: Inicializa con un DataFrame.
  - `plot_histogram()`: Genera un histograma del 'performance_score'.
  - `plot_histograms_by_department()`: Genera histogramas del 'performance_score' por departamento.
  - `plot_boxplot()`: Genera un diagrama de caja del 'performance_score' por departamento.
  - `plot_scatterplots()`: Genera gráficos de dispersión para 'years_with_company' vs. 'performance_score' y 'salary' vs. 'performance_score'.

## Configuración

Para utilizar este proyecto, asegúrate de tener los siguientes requisitos instalados:
- Python 3.x
- Librerías: `pandas`, `numpy`, `matplotlib`, `seaborn`, `sqlalchemy`, `mysql-connector-python`

Puedes instalar las librerías necesarias con:

```bash
pip install pandas numpy matplotlib seaborn sqlalchemy mysql-connector-python
