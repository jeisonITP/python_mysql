import os
from pick import pick

#Generar una copia de seguridad
os.popen('mysqldump -h localhost -u root --databases veterinaria > D:\\lg4\\veterinaria.sql')

# Restaurar copia de s1eguridad
# mysql -h localhost -u root < veterinaria.sql 

databases = [
    'veterinaria',
    'multinacional-gestion',
]

#option, index = pick(databases, 'Seleccione una base de datos: ')

#print(option)