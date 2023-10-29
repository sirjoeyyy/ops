import mysql.connector
from mysql.connector import connect, Error

# Function to create a MySQL connection
def create_connection():
    try:
        connection = connect(
            host="20.245.66.206",  # Change to your MySQL server host
            user="root",  # Change to your MySQL username
            password="15162829sInenhlanhlA@**",  # Change to your MySQL password
        )
        return connection
    except Error as e:
        print(f"Error: {e}")
        return None

# Function to create a new database
def create_database(connection, db_name):
    try:
        with connection.cursor() as cursor:
            cursor.execute(f"CREATE DATABASE IF NOT EXISTS {db_name}")
        print(f"Database '{db_name}' created successfully.")
    except Error as e:
        print(f"Error: {e}")

# Function to create a table
def create_table(connection, db_name, table_name):
    try:
        with connection.cursor() as cursor:
            cursor.execute(f"USE {db_name}")
            cursor.execute(f"CREATE TABLE IF NOT EXISTS {table_name} (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), age INT)")
        print(f"Table '{table_name}' created successfully.")
    except Error as e:
        print(f"Error: {e}")

# Function to insert data into the table
def insert_student(connection, db_name, table_name, student_data):
    try:
        with connection.cursor() as cursor:
            cursor.execute(f"USE {db_name}")
            query = f"INSERT INTO {table_name} (name, age) VALUES (%s, %s)"
            cursor.executemany(query, student_data)
            connection.commit()
        print("Data inserted successfully.")
    except Error as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    connection = create_connection()
    if connection is not None:
        create_database(connection, "studentsManagement")
        create_table(connection, "studentsManagement", "studentInfo")
        
        # Example student data to insert
        student_data = [("John Doe", 22), ("Jane Smith", 20), ("Bob Johnson", 21)]
        insert_student(connection, "studentsManagement", "studentInfo", student_data)

        connection.close()
