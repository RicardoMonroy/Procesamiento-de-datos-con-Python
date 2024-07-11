agenda = {}

def agregar_contacto(nombre, telefono, correo):
    if nombre in agenda:
        print(f"\nEl contacto {nombre} ya existe.")
    else:
        agenda[nombre] = (telefono, correo)
        print(f"\nEl contacto {nombre} fué agregado con exito.")

def buscar_contacto(nombre):
    if nombre in agenda:
        telefono, correo = agenda[nombre]
        print(f"\nNombre: {nombre}\nTeléfono: {telefono}\nCorreo: {correo}")
    else:
        print(f"El contacto {nombre} no existe en tu agenda")

def mostrar_contactos():
    if agenda:
        for nombre, (telefono, correo) in agenda.items():
            print(f"\nNombre: {nombre},\tTeléfono: {telefono},\tCorreo: {correo}")
    else:
        print("La agenda está vacía")

def menu():
    while True:
        print("\nAgenda de contactos")
        print("\t1. Agregar un contacto")
        print("\t2. Buscar un contacto")
        print("\t3. Mostrar todos los contactos")
        print("\t4. Salir")
        opcion = input("\tElige una opción: ")

        if opcion == "1":
            print("\nFormulario para añadir contacto")
            nombre = input("Escribe el nombre: ")
            telefono = input("Escribe su teléfono: ")
            correo = input("Escribe el correo: ")
            agregar_contacto(nombre, telefono, correo)
            
        elif opcion == "2":
            print("\nFormulario de búsqueda de un contacto")
            nombre = input("Escribe el nombre del contaco a buscar: ")
            buscar_contacto(nombre)

        elif opcion == "3":
            print("\nListado de todos los contactos")
            mostrar_contactos()

        elif opcion == "4":
            print("\nGracias por usar la mejor agenda del mundo")
            break
        else:
            print("\nOpción inválida, intentalo nuevamente")

menu() 