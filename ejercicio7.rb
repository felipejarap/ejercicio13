### Ejercicio 7: Ejercicio completo con un hash
#Se tiene un hash con el inventario de un negocio de computadores.
#~~~ruby
#inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
#~~~
#Se pide:
#- Crear un menú de 7 opciones, es decir, el usuario puede ingresar 1 2 3 4 5 6 y 7, y según eso el programa realizará distintas funciones.
#- Si el usuario ingresa 1, podrá **agregar** un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
#	- Ejemplo del input: "Pendrives, 100"
#- Si el usuario ingresa 2, **podrá eliminar** un item.
#- Si el usuario ingresa 3, puede **actualizar** la información almacenada (item y stock).
#- Si el usuario ingresa 4, podrá ver el **stock total** (suma del stock de cada item) que hay en el negocio.
#- Si el usuario ingresa 5, podrá ver el **ítem que tiene la mayor cantidad de stock**.
#- Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item **existe en el inventario** o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
#- El programa debe repertirse hasta que el usuario ingrese 7 (salir).

# 1 - Información del problema

# 2 - Declarar el procesamiento

# 3 - Procesar

# 1 - Información del problema
inventario_inicial = {"Notebooks": 4,
                      "PC Escritorio": 6, 
                      "Routers": 10, 
                      "Impresoras": 6}

inventario_actualizado = inventario_inicial

opcion_elegida = 0

opciones = ['Opción 01: Agregar item',
            'Opción 02: Eliminar item',
            'Opción 03: Actualizar item de inventario (nombre y stock)',
            'Opción 04; Consulta de stock total',
            'Opción 05: Consulta de producto con máximo stock',
            'Opción 06: Consulta de inventario',
            'Opción 07: Salir de inventario'
            ]

opcion_salida = opciones.length
mensaje_bienvenida = """Bienvenido al software de Inventario!!! Favor ingresa una alternativa de las disponibles :)"""
mensaje_menu = "Por favor, elija una de las opciones disponibles ya mencionadas:\n"

# 2 - Declarar el procesamiento

# Menú de 7 opciones

#Mensaje de Bienvenida
def welcome_message(message)
    puts message
end


#Menú
def mostrar_menu(opciones)  
    texto_menu = opciones.join("\n")
    puts texto_menu
end

def escoger_alternativa(opciones)
    alternativa_ingresada = gets.chomp
    alternativa_transformada = (alternativa_ingresada.to_f).to_i
    cantidad_opciones = opciones.length

    while !(0 < alternativa_transformada and alternativa_transformada <= cantidad_opciones)
        puts "Tu alternativa es #{alternativa_ingresada}"
        puts "Debes escoger un número entre 1 y #{cantidad_opciones}"
        alternativa_ingresada = gets.chomp
        alternativa_transformada = alternativa_ingresada.to_i
      end
      return alternativa_transformada
    end
    


# Opción 1
def agregar(inventario)
    puts "Seleccionó la opción 'Agregar'."
    puts "Indique el nombre del producto por añadir:"
    producto = gets.chomp.to_s
    puts "Ahora indique la cantidad de stock:"
    stock = gets.chomp.to_i
    inventario[producto] = stock
    # print inventario, ¿¿Cómo hago para que si vuelvo a escribir el mismo producto, me lo sume??
    print "Has agregado el producto #{producto} con el stock de #{stock}\n"
end

# Opción 2
def eliminar(inventario)
    puts "Seleccionó la opción 'Eliminar'."
    puts "Indique el nombre de su producto por eliminar:"
    producto = gets.chomp.to_s
    inventario.delete(producto)
    # print inventario, ¿¿Cómo hago para eliminar las llaves que son símbolos??
    print "Has eliminado del inventario el producto #{producto}\n"
end

# Opción 3
def actualizar(inventario)
    puts "Seleccionó la opción 'Actualizar'."
    puts "Indique el nombre del producto por actualizar:"
    producto = gets.chomp.to_s
    puts "Ahora indique la cantidad de stock que actualizará:"
    stock = gets.chomp.to_i
    inventario[producto] = stock
    print inventario
    print "Has actualizado el producto #{producto} con el nuevo stock de #{stock}\n"
end

# Opción 4
def stock_total(inventario)
    puts "Seleccionó la opción 'Stock Total'."
    suma = 0
    inventario.each { |producto, stock| suma += stock}
    puts "El stock almacenado actual es de #{suma} unidades."
end

# Opción 5
def max_stock(inventario)
    puts "Seleccionó la opción 'Consulta de stock máximo'"
    print "El stock con mayor unidades es: "
    print inventario.select { | _product , stock| stock == inventario.values.max}.keys
    print " con #{inventario.select { | _product , stock| stock == inventario.values.max}.values} unidades\n"
    #puts "El producto con mayor stock es #{inventario.max_by { |stock| stock}}."
    # ¿¿Cómo hago para mostrar el producto y stock como string en ves de arreglo??
end

# Opción 6
def hayinventario(inventario)
    puts "Seleccionó la opción 'Consulta de existencia de inventario'."
    if inventario.empty?
        then puts "No quedan ítem en el inventario"
    else
        puts "Quedan ítems en el inventario :)"
    end
end

# Opción 7
def salir(inventario)
    print "Elegiste Salir, kbye~"
    exit
end


# 3 - Procesar

#1 Menú de 7 Opciones
welcome_message(mensaje_bienvenida)
mostrar_menu(opciones)

while (opcion_elegida != opcion_salida) do
    opcion_elegida = escoger_alternativa(opciones)
    case opcion_elegida
    when 1
        agregar(inventario_inicial)
        welcome_message(mensaje_menu)
    when 2
        eliminar(inventario_inicial)
        welcome_message(mensaje_menu)
    when 3
        actualizar(inventario_inicial)
        welcome_message(mensaje_menu)
    when 4
        stock_total(inventario_inicial)
        welcome_message(mensaje_menu)
    when 5
        max_stock(inventario_inicial)
        welcome_message(mensaje_menu)
    when 6
        hayinventario(inventario_inicial)
        welcome_message(mensaje_menu)
    when opcion_salida
        salir(inventario_inicial)
        break
    end
end

#opcion_elegida = escoger_alternativa(opcion_elegida)
#puts "Alternativa escogida: #{escoger_alternativa(opciones)}"