from publicaciones import listarPublicaciones, dibujarPublicaciones

limite = input("Limite de consulta (Sin limite): ")
busqueda = input("Busqueda (Sin busqueda): ")
pagina = input("Pagina (Pagina 1): ")

publicaciones = listarPublicaciones(limite=limite, busqueda=busqueda)

dibujarPublicaciones(publicaciones)