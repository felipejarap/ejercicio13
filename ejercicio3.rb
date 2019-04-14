
#Dado el hash:
#
#~~~ruby
#h = {"x": 1, "y":2}
#~~~
#
#- Agregar el string z con el valor 3.
#- Cambiar el valor de x por 5.
#- Eliminar la clave y.
#- Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
#- Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
#	- Ejemplo:
#	
#    ~~~rb
#     x = {"a": "hola" } 
#    ~~~
#    Se transforme en:
#    
#    ~~~rb
#    x = {"hola": "a"}
#    ~~~

h = {"x": 1, "y":2}
h["z"] = 3 # hash[nueva llave] = valor
puts h
h[:x] = 5
puts h
h.delete(:y)
puts h
puts "yeah" if h.include?("z")
puts h.invert