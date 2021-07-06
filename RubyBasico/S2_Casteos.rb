#a flotante
a="69.420".to_f
b=Float("69.420")
puts a,b

#a string
a=69.420.to_s
b=String(69.420)
puts a,b

#a int
a="123".to_i
b=Integer("123")
puts a,b

#impresion con formato de strings
puts sprintf("%s",123.555)
puts sprintf("%d",123.555)
puts sprintf("%.2f",123.555)

#flotantes y enteros
a=1.0 / 2 #=> 0.5
b=1.to_f / 2 #=> 0.5
c=1 / Float(2) #=> 0.5
d=1.fdiv 2 # => 0.5
puts a,b,c,d



