restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#1. Obtener el plato mas caro.
print restaurant_menu.max_by { |dish, value| value}
puts ""

#2. Obtener el plato mas barato.
print restaurant_menu.min_by { |dish, value| value}
puts ""

#3. Sacar el promedio del valor de los platos.
sum = 0
restaurant_menu.map { |dish, value| sum += value}
average_value = sum / restaurant_menu.length
print average_value
puts ""

#4. Crear un arreglo con solo los nombres de los platos.
dishes = restaurant_menu.keys
print dishes
puts ""

#5. Crear un arreglo con solo los valores de los platos.
dishes_value = restaurant_menu.values
print dishes_value
puts ""

#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)
menu_con_iva = restaurant_menu.each { |dish, value| restaurant_menu[dish] = value * 1.19 }
print menu_con_iva
puts ""

#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra
menu_discounted = restaurant_menu.each do |dish, value|
    if dish.index(" ")
        restaurant_menu[dish] = value * 0.8
    end
end
print menu_discounted