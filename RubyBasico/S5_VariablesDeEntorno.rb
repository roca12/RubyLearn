require 'pp'

puts ENV.size
pp ENV

puts ENV["home"]
puts ENV.fetch('FOO', 'No encontrado')