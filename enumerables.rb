# Dado un array de números imprime únicamente los 
#elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index
def print_odd_indexed_integers(array)
  odd = []
  array.each_with_index do |number, index|
    if index % 2 == 1
      odd << number
    end
  end
  odd
end

# Dado un array de números regresa un array con 
#solo los numeros impares
# Utiliza: Enumerable#select
def odd_integers(array)
  #Escogera solo los numeros impares
  array.select {|num| num % 2 == 1}
end

# Dado un array y un límite regresa el primer 
#numero que sea menor al límite 
# Utiliza: Enumerable#find
def first_under(array, limit)
  #Encontrara el primer numero que sea menor que el limit
  array.find{|num| num < limit}
end


# Dado un array de strings y regresa un nuevo 
#array donde todos los elementos contengan al 
#final un signo de admiración. 
# Utiliza: Enumerable#map
def add_bang(array)
  #Cada palabra dentro del array le agregara al final un "!"
  array.map{|word| word + "!"}
end

# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
  #Sumara todos los elementos dentro del array
  array.reduce(:+)
end


# Dado un array de string reorganizalo en grupos
# de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
def sorted_triples(array)
  #declarar array vacio para meter las palabras ya en orden
  sorted = []
  #iterar cada 3 palabras y ordenarlas alfabeticamente
  #.sort sirve para ordenar alfabeticamente
  #each_slice separa una oracion en el numero argumentos que
  #quieras dentro de un array
  array.each_slice(3){|word| sorted << word.sort}
  #regresar el array lleno
  sorted
end

# Driver code... no modifiques nada de este código 
p print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) == [4,8,12]
# => 4
# => 8
# => 12

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]

puts sum([1, 1, 2, 3, 5]) == 12

words = %w(De esta simple manera se puede reorganizar una oración)  
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oración", "reorganizar", "una"]]      