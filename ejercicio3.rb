h = {"x": 1, "y":2}

h[:z]=3

h[:x]=5

h.delete(:y)

puts h

puts 'yeeah' if h.has_key?(:z)

h2=h.to_a
h3=h2.map {|x, y| [y, x]}

puts h2
puts h3