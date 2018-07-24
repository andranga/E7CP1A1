inventario = {"Notebooks": 4, "PC_Escritorio": 6, "Routers": 10, "Impresoras": 6}

opcion=0
while opcion != 7
	puts '1. Agregar un item'
	puts '2. Eliminar un item'
	puts '3. Actualizar un item'
	puts '4. Ver total de items'
	puts '5. Item mayor stock'
	puts '6. Consultar item'
	puts '7. Salir'
	opcion = gets.chomp.to_i
	if opcion == 1
		puts 'Ingrese nombre nuevo item:'
		nuevo_item = gets.chomp
		puts 'Ingrese stock nuevo item:'
		nuevo_stock = gets.chomp.to_i
		inventario.merge!({nuevo_item => nuevo_stock})
	elsif opcion == 2
		puts 'Ingrese nombre item eliminar:'
		nuevo_item = gets.chomp
		inventario.delete(nuevo_item)
	elsif opcion == 3
		puts 'Ingrese nombre item a actualizar:'
		nuevo_item = gets.chomp
		puts 'Ingrese nuevo stock de item:'
		nuevo_stock = gets.chomp.to_i
		inventario[nuevo_item]=nuevo_stock
	elsif opcion == 4
		puts inventario
	elsif opcion == 5
		inventario=inventario.sort
		puts inventario.max
	elsif opcion == 6
		puts 'Ingrese nombre item a consultar:'
		nuevo_item = gets.chomp
		puts "El stock es: #{inventario[nuevo_item]}"
	end
end



