import mysql.connector

try:
        mydb = mysql.connector.connect(
            host="root",
            user="root",
            password="0984734217tgmom",
        )
        mycursor = mydb.cursor()
        sql= f"CREATE DATABASE IF NOT EXISTS alx_book_store"
except mysql.connector.errors as err:
        print(f"Erroe: {err}")
finally:
        if mydb.is_connectd():
            mycursor.close()
            mydb.close()  




