#las variables de una clase se notan con un @@
class Dinosaurio
  @@clasificacion="Como un reptil pero tambien un ave"
  @@estado="exintos"

  def self.clasificacion
    @@clasificacion
  end

  def clasificacion
    @@clasificacion
  end
end

dino=Dinosaurio.new
puts dino.clasificacion
puts Dinosaurio.clasificacion

#Las variables de clase estan compartidas entre clases relacionadas y sobreescritas
#por clases hijas
class TRex < Dinosaurio
  @@clasificacion = "Ave de grandes dientes!"
end
puts TRex.clasificacion
puts Dinosaurio.clasificacion

#Variables de clase definidas dentro de un modulo no son reescritas en clases inclusivas
module SomethingStrange
  @@clasificacion  = "Algo extraño"
end
class DuckDinosaur < Dinosaurio
  include SomethingStrange
end
puts DuckDinosaur.class_variables
puts SomethingStrange.class_variables
puts DuckDinosaur.clasificacion

#variables locales no tienen prefijos
def un_metodo
  variable_local="hola"
  p variable_local
end
un_metodo

2.times do |n|
  local_var = n + 1
  p local_var
end

my_variable = "Hola mundo"
my_variable.split("").each_with_index do |char, i|
  puts "El caracter del string '#{my_variable}' en el indice #{i} es #{char}"
end

#variables globales se usa el prefijo $
$soy_una_global ="mi global"
class Dinosaurio
  def instance_method
    p "Variables globales se pueden usar en todo lado. ves? #{$soy_una_global}, #{$another_global_var}"
  end
  def self.class_method
    $another_global_var = "En serio?"
    p "Variables globales se pueden usar en todo lado. ves? #{$soy_una_global}"
  end
end

puts Dinosaurio.class_method
dinosaur = Dinosaurio.new
puts dinosaur.instance_method

#variables instancia
class Dinosaurio
  @base_sound = "rawrr"
  def initialize(sound = nil)
    @sound = sound || self.class.base_sound
  end
  def speak
    @sound
  end
  def try_to_speak
    @base_sound
  end
  def count_and_store_sound_length
    @sound.chars.each_with_index do |char, i|
      @sound_length = i + 1
      p "#{char}: #{sound_length}"
    end
  end

  def sound_length
    @sound_length
  end
  def self.base_sound
    @base_sound
  end
end
puts dino_1 = Dinosaurio.new
puts dino_2 = Dinosaurio.new("grrr")
puts Dinosaurio.base_sound
puts dino_2.speak
puts dino_1.speak
puts dino_1.count_and_store_sound_length
puts dino_1.sound_length
puts dino_2.sound_length


