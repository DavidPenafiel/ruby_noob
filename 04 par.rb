puts 'ingresa un nro entero'
nro = gets.chomp.to_f
if nro % 2 == 0
  puts "El nro #{nro} es par"
else
  puts "El nro #{nro} es impar"
end
