import mysql.connector

# Conexion a la base de datos MySQL
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    port=3306, # Opcional por defecto 3306
    database="blog", # Opcional
)

def listarPublicaciones(limite, busqueda):
    cursor = db.cursor(dictionary=True)
    
    limit_sql = ''
    busqueda_sql = ''
    
    if limite:
        limit_sql = ' limit ' + limite
        
    if busqueda:
        busqueda_sql = " WHERE publicaciones.titulo LIKE '%"+ busqueda +"%' \
            or publicaciones.fecha_publicacion LIKE '%"+ busqueda +"%' \
            or usuarios.nombre LIKE '%"+ busqueda +"%' "

    sql = """select publicaciones.*, count(comentarios.id) as cant_comentarios from publicaciones 
        INNER JOIN usuarios on usuarios.id = publicaciones.usuario_id 
        LEFT JOIN comentarios on publicaciones.id = comentarios.publicacion_id"""  \
        + busqueda_sql + ' GROUP BY publicaciones.id ' + ' ORDER BY titulo ASC ' + limit_sql

    cursor.execute(sql)        
    publicaciones = cursor.fetchall()
    
    cursor.execute("SELECT COUNT(*) AS total FROM publicaciones INNER JOIN usuarios on usuarios.id = publicaciones.usuario_id " \
        + busqueda_sql)
    respuesta_total = cursor.fetchone()
    
    db.commit()
    cursor.close()
    
    return {
        "total": respuesta_total['total'],
        "data": publicaciones
    }

def dibujarPublicaciones(datos):
    publicaciones = datos['data']
    
    print('ID       TITUTLO     IMAGEN     FECHA_PUBLICACION')
    
    for publicacion in publicaciones:
        print(str(publicacion['id_publicaciones']) + '     ' \
              + publicacion['titulo'] + '    ' \
              + publicacion['imagen'] + '    ' \
                  + str(publicacion['fecha_de_publicacion']))
    
    print('1 de 25 paginas')    
    print(str(len(publicaciones)) + ' de '+ str(datos['total']) +' registros encontrados')

def crearPublicacion():
    pass

def editarPublicacion():
    pass

def eliminarPublicacion():
    pass