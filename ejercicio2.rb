#Se tiene el siguiente hash:
#productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
#y se realiza la siguiente consulta para conocer los productos existentes:
#Productos.each { |valor, producto| puts producto }
#Corrige el error para mostrar la información solicitada.
#Se quiere agregar un nuevo producto al hash:
#producto[2200] = cereal
#Corrige la instrucción para agregar el producto.
#Se quiere actualizar el precio de la bebida:
#~~~
#producto[:bebida] = 2000
#~~~
# 
# Corrige la instrucción para actualizar el valor del producto existente.
#
#4. Convertir el hash en un array y guardarlo en una nueva variable.
#
#5. Eliminar el producto 'galletas' del hash.


productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each { |producto, valor| puts producto }
# con minus y el orden de producto/valor estaban al reves

productos[:cereal] = 2200
puts productos
productos['bebida'] = 2000 # precio corregido
puts productos
productos_array = productos.to_a # convertido a array
print productos_array
productos.delete('galletas') # galletas eliminado
puts productos