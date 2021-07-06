# Arrays de strings, se pueden usar muchos tipos de pares delimitadores
array = %w(uno dos tres cuatro)
puts array

array = %w[uno dos tres cuatro]
puts array

array = %w{uno dos tres cuatro}
puts array

array = %w<uno dos tres cuatro>
puts array

array = %w(uno dos tres cuatro)
puts array

array = ["uno", "dos", "tres", "cuatro"]
puts array

# cadena incluyendo espacio en blanco
array = %w(Colorado California New\ York)
puts array

# Arrays con array::new
arreglo = Array.new 3
print "#{arreglo}\n"

arreglo = Array.new 3, :x #=> [:x, :x, :x]
print "#{arreglo}\n"

Array.new(3) { |i| i.to_s } #=> ["0", "1", "2"]
print "#{arreglo}\n"

a = Array.new 3, "X" # No recomendado.
a[1].replace "C" # a => ["C", "C", "C"]
print "#{a}\n"

b = Array.new(3) { "X" } # Forma recomendada.
b[1].replace "C" # b => ["X", "C", "X"]
print "#{b}\n"

# Array de simbolos
array = %i(one two three four)
print "#{array}\n"

# agregando elementos
array = [1, 2, 3] << 4
print "#{array}\n"

array = [1, 2, 3].push(4)
print "#{array}\n"

array = [1, 2, 3].unshift(4)
print "#{array}\n"

array = [1, 2, 3] << [4, 5]
print "#{array}\n"

# removiendo elementos
array = [1, 2, 3, 4]
array.pop
print "#{array}\n"

array = [1, 2, 3, 4]
array.shift
print "#{array}\n"

array = [1, 2, 3, 4]
array.delete(1)
print "#{array}\n"

array = [1, 2, 3, 4, 5, 6]
array.delete_at(2)
print "#{array}\n"

array = [1, 2, 2, 2, 3]
array - [2]
print "#{array}\n"

array - [2, 3, 4]
print "#{array}\n"

# combinando arrays
array = [1, 2, 3] + [4, 5, 6]
print "#{array}\n"

array = [1, 2, 3].concat([4, 5, 6])
print "#{array}\n"

array = [1, 2, 3, 4, 5, 6] - [2, 3]
print "#{array}\n"

array = [1, 2, 3] | [2, 3, 4]
print "#{array}\n"

array = [1, 2, 3] & [3, 4]
print "#{array}\n"

array = [1, 2, 3] * 2
print "#{array}\n"

# accesando a datos de arrays
puts %w(a b c)[0] # => 'a'
puts %w(a b c)[1] # => 'b'

# con rangos
puts %w(a b c d)[1..2] # => ['b', 'c']
puts %w(a b c d)[1...2] # => ['b']

# inverso
puts %w(a b c)[-1] # => 'c'
puts %w(a b c)[-2] # => 'b'

# derecho e inverso
puts %w(a b c d e)[1...-1] # => ['b', 'c', 'd']

# primer elemento de un array
puts [1, 2, 3, 4].first # => 1

# primeros datos
puts [1, 2, 3, 4].first(2) # => [1, 2]

# ultimo elemento del array
puts [1, 2, 3, 4].last # => 4

# ultimos datos
puts [1, 2, 3, 4].last(2) # => [3, 4]

# dato randoms
puts [1, 2, 3, 4].sample # => 3
puts [1, 2, 3, 4].sample # => 1

# datos randoms
puts [1, 2, 3, 4].sample(2) # => [2, 1]
puts [1, 2, 3, 4].sample(2) # => [3, 4]

# Descomposición de arrays
arr = [1, 2, 3]
a = arr[0]
b = arr[1]
c = arr[2]

a, b, c = arr
print a, " ", b, " ", c, "\n"

# descomposición de partes desiguales
a, *b = arr # a = 1; b = [2, 3]
a, *b, c = arr # a = 1; b = [2]; c = 3
a, b, c, *d = arr # a = 1; b = 2; c = 3; d = []
print a, " ", b, " ", c, "\n"

# union de arrays
x = [5, 5, 1, 3]
y = [5, 2, 4, 3]
print (x | y), "\n"

# intersección de arrays
print (x & y), "\n"

# diferencia de arrays
print (x - y), "\n"

# removiendo todos los null de un arreglo
array = [ 1, nil, 'hello', nil, '5', 33]
arraycompacted = array.compact # => [ 1, 'hello', '5', 33]
print arraycompacted, "\n"

# permutaciones
array=[1,2,3].permutation
print array, "\n"

array=[1,2,3].permutation.to_a
print array, "\n"

array=[1,2,3].permutation(2).to_a
print array, "\n"

array=[1,2,3].permutation(4).to_a
print array, "\n"

# combinatorias
array=[1,2,3].combination(1)
print array, "\n"

array=[1,2,3].combination(1).to_a
print array, "\n"

array=[1,2,3].combination(3).to_a
print array, "\n"

array=[1,2,3].combination(4).to_a
print array, "\n"

# combinatorias y permutaciones con repeticiones
array=[1,2,3].repeated_combination(3).to_a
print array, "\n"

array=[1,2,3].repeated_combination(2).to_a
print array, "\n"

array=[1,2,3].repeated_combination(4).to_a
print array, "\n"

array=[1,2,3].repeated_permutation(3).to_a
print array, "\n"

array=[1,2,3].repeated_permutation(2).to_a
print array, "\n"

array=[1,2,3].repeated_permutation(4).to_a
print array, "\n"

# reducciones
array=[1,2,3].reduce(1) {|a,b| a + b}
print array, "\n"

array=[1,2,3].reduce {|a,b| a + b}
print array, "\n"

array=[1,2,3].reduce(0, :-)
print array, "\n"

array=[1,2,3,4].reduce(:*)
print array, "\n"

# filtrando
array = [1, 2, 3, 4, 5, 6]
array =array.select { |number| number > 3 }
print array, "\n"

array = [1, 2, 3, 4, 5, 6]
array =array.reject { |number| number > 3 } # => [1, 2, 3]
print array, "\n"

array = [1, 2, 3, 4, 5, 6]
array =array.select { |number| number > 3 }.reject { |number| number < 5 }
print array, "\n"

#map permite realizar operaciones para todos los datos de un array
array=[1, 2, 3].map { |i| i * 3 }
print array, "\n"

array=['1', '2', '3', '4', '5'].map { |i| i.to_i }
print array, "\n"

# llama to_i en todos los elementos
array=%w(1 2 3 4 5 6 7 8 9 10).map(&:to_i)
print array, "\n"

# Usando una lambda en todos los elementos
array=%w(1 2 3 4 5 6 7 8 9 10).map(&->(i){ i.to_i * 2})
print array, "\n"

# arrays bidimensionales
p array = Array.new(3) { Array.new(4) { 0 } }
p x = array[0][1]
p array[2][3] = 2

# aplanando bidimensional a unidimensional
p [1, 2, [[3, 4], [5]], 6].flatten

# obteniendo los datos unicos
a = [1, 1, 2, 3, 4, 4, 5]
p a.uniq

# obteniendo los datos unicos y quitando las repeticiciones
a = [1, 1, 2, 3, 4, 4, 5]
a.uniq!
p a

# compresiones de listas
p numbers = Array(1..10)
p numbers = (1..10).to_a
p odd_numbers = (1..10).step(2).to_a
p even_numbers = 2.step(10, 2).to_a
p squared_numbers = (1..10).map { |number| number * number }
p number_generator = (1..100).lazy
p number_generator.first(10)
p [*1..10]
p [*'a'..'f']

# array a string
def join_as_string(arg)
  Array(arg).join(',')
end

p join_as_string('something')
p join_as_string([2, 1, 5])
p join_as_string(1)
p join_as_string(2..4)
p join_as_string([])
p join_as_string(nil)