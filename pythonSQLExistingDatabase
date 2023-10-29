import mysql.connector
from mysql.connector import connect, Error

# Function to connect to MySQL database and fetch all records from the "students" table
def fetch_students_records():
    try:
        # Establish a connection to the MySQL database
        with connect(
            host="20.245.66.206",  #your MySQL server host
            user="root",  # your MySQL username
            password="15162829sInenhlanhlA@**",  # your MySQL password
            database="studentsManagement",  # Name of your database
        ) as connection:
            # Create a cursor for executing SQL queries
            cursor = connection.cursor()

            # Define the SQL query to fetch all records from the "students" table
            query = "SELECT * FROM students"

            # Execute the query
            cursor.execute(query)

            # Fetch all the records
            records = cursor.fetchall()

            # Print the fetched records (you can store them in a data structure as well)
            for record in records:
                print(record)

    except Error as e:
        print(f"Error: {e}")

# Call the function to fetch and print all student records
fetch_students_records()


#TO RUN SCRIPT
 python <scriptName>.py
