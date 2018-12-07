c = 0
def suma a, b
  @resultado = a + b
  puts "Definición variable '@resultado' - " + (defined? @resultado).to_s
  puts "Definición variable 'a' - " + (defined? a).to_s
  puts @resultado
end
suma 12, 14
puts "Definición variable '@resultado' - " + (defined? @resultado).to_s
puts "Definición variable 'a' - " + (defined? a).to_s
puts "Definición variable 'c' - " + (defined? c).to_s


class Llantas
  @@ejes = 3
  def ejesh
    puts "Definición variable '@@ejes' - " + (defined? @@ejes).to_s
  end
end
obj = Llantas.new
obj.ejesh
def resta a,b
  $result = a - b
end
resta 5, 3
puts $result
puts "Definición variable '$resul' - " + (defined? $result).to_s
PI = 3.1415
puts "El valor de PI es : #{PI}"
puts "Definición variable 'PI' - " + (defined? PI).to_s
