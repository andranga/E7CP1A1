meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

i=0
array=[]
while i < meses.size
  array[i] = [meses[i], ventas[i]]
  i += 1
end
ventas_mes=array.to_h
puts ventas_mes

rever=ventas_mes.map {|x, y| [y, x]}
rever= rever.to_h
puts rever

rever=rever.sort
rever= rever.to_h
puts rever
puts rever.max


