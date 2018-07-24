personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

i=0
personas_array=[]
while i < personas.size
  personas_array[i] = [personas[i], edades[i]]
  i += 1
end
personas_hash=personas_array.to_h
puts personas_hash

def promedio(hash)
	suma=0
	hash.each {|key, value| suma += value}
	return suma/hash.size
end

puts promedio(personas_hash)





