restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts restaurant_menu

restaurant_menu = restaurant_menu.sort_by {|keys, values| values}
puts restaurant_menu.last
puts restaurant_menu.first

def promedio(hash)
	suma=0
	hash.each {|key, value| suma += value}
	return suma/hash.size
end

puts promedio(restaurant_menu)


nombres = restaurant_menu.map {|keys, values| keys}
puts nombres

valores = restaurant_menu.map {|keys, values| values}
puts valores

restaurant_menu=restaurant_menu.map {|keys, values| [keys, values*1.19]}
puts restaurant_menu

restaurant_menu=restaurant_menu.map {|keys, values| 
	if keys.include?(' ')
		[keys, values*0.8] 
	else
		[keys, values] 
	end
}
puts restaurant_menu
