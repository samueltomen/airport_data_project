import pyodbc

def get_db_connection():
    """
    Establishes a connection to the SQL Server database and returns the connection object.

    Returns:
        connection (pyodbc.Connection): The connection object to the SQL Server database.
    """
    # Informations de connexion
    server = 'GRAM\\SQLEXPRESS'
    database = 'airport_ipssi'

    conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes;'

    try:
        connection = pyodbc.connect(conn_str)
        print("Connexion réussie à la base de données SQL Server.")
        return connection

    except pyodbc.Error as e:
        print(f"Erreur lors de la connexion : {e}")
        return None
