import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sqlalchemy import create_engine

class DataLoader:
    def __init__(self, db_config):
        self.db_config = db_config
        try:
            self.engine = self.create_engine()
            print("Conexión a la base de datos establecida con éxito.")
        except Exception as e:
            print(f"Error al crear la conexión a la base de datos: {e}")
            raise
    
    def create_engine(self):
        db_uri = f"mysql+mysqlconnector://{self.db_config['user']}:{self.db_config['password']}@{self.db_config['host']}/{self.db_config['database']}"
        return create_engine(db_uri)
    
    def load_data(self, query):
        try:
            return pd.read_sql(query, self.engine)
        except Exception as e:
            print(f"Error al cargar datos: {e}")
            raise

class DataProcessor:
    def __init__(self, df):
        self.df = df
    
    def clean_data(self):
        self.df = self.df.dropna(subset=['performance_score', 'department', 'years_with_company', 'salary'])
    
    def get_summary(self):
        return self.df['performance_score'].describe()
    
    def get_statistics(self):
        return self.df.groupby('department').agg(
            performance_score_mean=('performance_score', 'mean'),
            performance_score_median=('performance_score', 'median'),
            performance_score_std=('performance_score', 'std'),
            salary_mean=('salary', 'mean'),
            salary_median=('salary', 'median'),
            salary_std=('salary', 'std'),
            num_employees=('id', 'count')
        ).reset_index()
    
    def calculate_correlations(self):
        correlation_years_performance = self.df['years_with_company'].corr(self.df['performance_score'])
        correlation_salary_performance = self.df['salary'].corr(self.df['performance_score'])
        return correlation_years_performance, correlation_salary_performance

class DataVisualizer:
    def __init__(self, df):
        self.df = df
        sns.set(style="whitegrid")
    
    def plot_histogram(self):
        plt.figure(figsize=(12, 6))
        sns.histplot(self.df['performance_score'], bins=20, kde=True, color='skyblue')
        plt.title('Histograma del Performance Score para Todo el Conjunto de Datos')
        plt.xlabel('Performance Score')
        plt.ylabel('Frecuencia')
        plt.show()
    
    def plot_histograms_by_department(self):
        fig, axes = plt.subplots(nrows=2, ncols=3, figsize=(18, 10), sharey=True)
        departments = self.df['department'].unique()
        for ax, dept in zip(axes.flat, departments):
            subset = self.df[self.df['department'] == dept]
            if len(subset['performance_score']) > 0:
                sns.histplot(subset['performance_score'], bins=20, kde=True, ax=ax)
                ax.set_title(f'{dept} - Performance Score')
                ax.set_xlabel('Performance Score')
                ax.set_ylabel('Frecuencia')
            else:
                ax.set_visible(False)
        plt.tight_layout()
        plt.show()
    
    def plot_boxplot(self):
        plt.figure(figsize=(12, 6))
        sns.boxplot(x='department', y='performance_score', data=self.df)
        plt.title('Distribución del Performance Score por Departamento')
        plt.xlabel('Department')
        plt.ylabel('Performance Score')
        plt.show()
    
    def plot_scatterplots(self):
        plt.figure(figsize=(12, 6))
        sns.scatterplot(x='years_with_company', y='performance_score', data=self.df, color='blue')
        plt.title('Gráfico de Dispersión: Years with Company vs. Performance Score')
        plt.xlabel('Years with Company')
        plt.ylabel('Performance Score')
        plt.show()
        
        plt.figure(figsize=(12, 6))
        sns.scatterplot(x='salary', y='performance_score', data=self.df, color='green')
        plt.title('Gráfico de Dispersión: Salary vs. Performance Score')
        plt.xlabel('Salary')
        plt.ylabel('Performance Score')
        plt.show()

# Configuración de la conexión a MySQL
db_config = {
    'user': 'root',
    'password': '',
    'host': 'localhost',
    'database': 'CompanyData'
}

# Uso de las clases
if __name__ == "__main__":
    # Cargar datos
    loader = DataLoader(db_config)
    query = "SELECT * FROM EmployeePerformance"
    df = loader.load_data(query)
    
    # Procesar datos
    processor = DataProcessor(df)
    processor.clean_data()
    print("Primeros registros del DataFrame:")
    print(df.head())
    print("Valores únicos en 'department':")
    print(df['department'].unique())
    print("Resumen de 'performance_score':")
    print(processor.get_summary())
    print("Estadísticas por Departamento:")
    print(processor.get_statistics())
    correlations = processor.calculate_correlations()
    print(f"Correlación entre years_with_company y performance_score: {correlations[0]}")
    print(f"Correlación entre salary y performance_score: {correlations[1]}")
    
    # Visualizar datos
    visualizer = DataVisualizer(df)
    visualizer.plot_histogram()
    visualizer.plot_histograms_by_department()
    visualizer.plot_boxplot()
    visualizer.plot_scatterplots()
