import pandas as pd

class CompanyDataService:
    def __init__(self, database):
        self.database = database

    def init_table(self):
        # Lógica para inicializar la tabla si es necesario
        pass

    def get_employees_performance(self):
        query = """
        SELECT department, performance_score, years_with_company, salary
        FROM employeeperformance
        """
        with self.database.get_connection() as conn:
            df = pd.read_sql(query, conn)
        return df
