import mysql.connector
from mysql.connector import Error

# Conexión a la base de datos
try:
    connection = mysql.connector.connect(
        host='localhost',
        database='CompanyData',
        user='root',
        password=''  # Cambia esto si tienes una contraseña
    )

    if connection.is_connected():
        cursor = connection.cursor()

        # Crear la tabla si no existe
        cursor.execute("""
        CREATE TABLE IF NOT EXISTS EmployeePerformance (
            id INT AUTO_INCREMENT PRIMARY KEY,
            employee_id INT,
            department VARCHAR(255),
            performance_score FLOAT,
            years_with_company INT,
            salary FLOAT
        )
        """)

        # Eliminar datos existentes
        cursor.execute("DELETE FROM EmployeePerformance")

        # Datos ficticios con departamentos variados
        data = [
            (0, 'HR', 45.0, 5, 50000),
            (1, 'IT', 78.0, 10, 70000),
            (2, 'Finance', 52.0, 3, 60000),
            (3, 'Marketing', 64.0, 7, 55000),
            (4, 'Sales', 37.0, 2, 45000),
            # Añade más registros según sea necesario
        ]

        # Insertar datos
        insert_query = """
        INSERT INTO EmployeePerformance (employee_id, department, performance_score, years_with_company, salary)
        VALUES (%s, %s, %s, %s, %s)
        """
        cursor.executemany(insert_query, data)
        connection.commit()

        print("Datos insertados correctamente")

except Error as e:
    print("Error al conectar a MySQL", e)

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
