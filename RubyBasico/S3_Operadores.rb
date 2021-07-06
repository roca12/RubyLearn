# ╔═══════════════════════╦════════════════════════════════════════╦════════╗
# ║ Operador              ║ Operaciones                            ║ Metodo?║
# ╠═══════════════════════╬════════════════════════════════════════╬════════╣
# ║ .                     ║ Llamada a metodo (foo.bar)             ║        ║
# ║ [] []=                ║ Bracket Lookup, Bracket Set            ║     ✓¹ ║
# ║ ! ~ +                 ║ Booleano NOT, complemento, suma unaria ║     ✓² ║
# ║ **                    ║ Exponentiation                         ║     ✓  ║
# ║ -                     ║ Menos unario                           ║     ✓² ║
# ║ * / %                 ║ Multiplication, division, modulo       ║     ✓  ║
# ║ + -                   ║ Addition, subtraction                  ║     ✓  ║
# ║ <>                    ║ Bitwise shift                          ║     ✓  ║
# ║ &                     ║ Bitwise AND                            ║     ✓  ║
# ║ | ^                   ║ Bitwise OR, Bitwise XOR                ║     ✓  ║
# ║ < <= >= >             ║ Comparison                             ║     ✓  ║
# ║ <=> == != === =~ !~   ║ Equality, pattern matching, comparison ║     ✓³ ║
# ║ &&                    ║ Boolean AND                            ║        ║
# ║ ||                    ║ Boolean OR                             ║        ║
# ║ .. ...                ║ Inclusive range, Exclusive range       ║        ║
# ║ ? :                   ║ Ternary operator                       ║        ║
# ║ rescue                ║ Modifier rescue                        ║        ║
# ║ = += -=               ║ Assignments                            ║        ║
# ║ defined?              ║ Defined operator                       ║        ║
# ║ not                   ║ Boolean NOT                            ║        ║
# ║ or and                ║ Boolean OR, Boolean AND                ║        ║
# ║ if unless while until ║ Modifier if, unless, while, until      ║        ║
# ║ { }                   ║ Block with braces                      ║        ║
# ║ do end                ║ Block with do end                      ║        ║
# ╚═══════════════════════╩════════════════════════════════════════╩════════╝

#modificadores de pregunta
a=0
a += 1 unless a.zero?
puts a
a += 1 if a.zero?
puts a
a -= 1 unless a<1
puts a

#llamando funciones para operadores
class ClaseOperadores

  def **(x)
    puts "Elevando a la potencia de#{x}"
  end

  def <<(y)
    puts "Corrimiento izquierdo de #{y}"
  end

  def !
    puts "Boolean negation"
  end
end
ClaseOperadores.new ** 2 #=> "Raising to the power of 2"
ClaseOperadores.new << 3 #=> "Shifting left by 3"
!ClaseOperadores.new #=> "Boolean negation"

#Operador de igualdad
puts (1..5) === 3 # => true
puts (1..5) === 6 # => false
puts Integer === 42 # => true
puts Integer === 'fourtytwo' # => false
puts /ell/ === 'Hello' # => true
puts /ell/ === 'Foobar' # => false

#malas y buenas practicas
# Bad
Integer === 42
(1..5) === 3
/ell/ === 'Hello'
# Good, uses synonym method
42.is_a?(Integer)
(1..5).include?(3)
/ell/ =~ 'Hello'

