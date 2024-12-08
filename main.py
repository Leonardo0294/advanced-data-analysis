import pandas as pd
import matplotlib.pyplot as plt
from database import Database
from services.company import CompanyDataService
from data.analysis.performance import PerformanceAnalysis

def main():
    try:
        # Configuración de la base de datos
        db_config = {
            'user': 'root',
            'password': '',
            'host': 'localhost',
            'database': 'CompanyData'
        }

        # Crear instancia de la clase Database
        database = Database(db_config)

        # Crear instancia de la clase CompanyDataService
        company_data_service = CompanyDataService(database)
        
        # Inicializar la tabla (si es necesario)
        company_data_service.init_table()
        
        # Obtener los datos de rendimiento de los empleados
        performance_data = company_data_service.get_employees_performance()
        data_frame = pd.DataFrame(performance_data)

        # Crear instancia de la clase PerformanceAnalysis
        performance_analysis = PerformanceAnalysis(data_frame)

        # Descripción de los departamentos
        performance_analysis.describe_departments()

        # Correlaciones
        correlations = {
            ("years_with_company", "performance_score"): performance_analysis.correlation_between(
                column1="years_with_company", column2="performance_score"),
            ("salary", "performance_score"): performance_analysis.correlation_between(
                column1="salary", column2="performance_score")
        }

        for (column1, column2), correlation in correlations.items():
            print(f"Correlación entre {column1} y {column2}: {correlation}")

        # Visualización de datos
        plt.figure(figsize=(15, 10))

        # Histogramas por departamento
        departments = ["Engineering", "Sales", "Services"]
        for i, dept in enumerate(departments, start=1):
            plt.subplot(3, 3, i)
            performance_analysis.histograms_by_department(department=dept)
            plt.title(f'Histograma del Performance Score - {dept}')

        # Gráficos de dispersión
        plt.subplot(3, 3, 7)
        performance_analysis.disperssion_between(
            column1="years_with_company", column2="performance_score")
        plt.title('Dispersión: Years with Company vs. Performance Score')

        plt.subplot(3, 3, 8)
        performance_analysis.disperssion_between(
            column1="salary", column2="performance_score")
        plt.title('Dispersión: Salary vs. Performance Score')

        plt.tight_layout()
        plt.show()

    except Exception as err:
        print("Ocurrió un error al ejecutar el script: ", err)

if __name__ == "__main__":
    main()
