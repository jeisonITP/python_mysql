import mysql.connector

# Conexion a la base de datos MySQL
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    port=3306, # Opcional por defecto 3306
    database='veterinaria'
)

mascota_id = 326

cursor = db.cursor(dictionary=True)
cursor.execute('select * from mascota where id_animal = %s', (mascota_id,))
mascota = cursor.fetchone()

print(mascota['nombre'])

"""cursor = db.cursor(dictionary=True)
cursor.execute('select * from mascota') 
mascotas = cursor.fetchall()

print(mascotas[0]['especie']) """


"""cursor = db.cursor()
cursor.execute('show databases') 
databases = cursor.fetchall()

databases2 = []

for database in databases:
    databases2.append(database[0])

print(databases2[0])"""