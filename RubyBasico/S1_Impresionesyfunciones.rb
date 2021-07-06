#importando liberias o gemas
require 'tk'

#impresión con salto de linea
puts "Hello world"
#impresion sin salto de linea
print "Hello world"
#hola mundo en ventana de tk
TkRoot.new{title "Hola mundo"}
Tk.mainloop

#metodos
def saludar
  puts "Buenas noches"
end

saludar()