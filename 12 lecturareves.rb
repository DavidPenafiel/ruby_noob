puts "LECTURA NORMAL\n"
File.open('12hola').readlines.each do |linea|
puts linea
end

puts "\nINVERTIR DIRECTO EN RECORRIDO"
File.open('12hola').readlines.each do |linea|
puts linea.reverse
end

puts "\nUSANDO ARREGLOS PARA INVERTIR EL ORDEN DE LAS LÍNEAS"
new_array = []
File.open('12hola').readlines.each do |linea|
  new_array << linea.chomp #.reverse
end
puts new_array.reverse

puts "\nGUARDADNDO EL ARREGLO EN OTRO DOCUMENTO"

file = File.open('12invertido','w')
new_array.reverse.each do |linea|
  file.puts linea
end
file.close

File.open('12invertido').readlines.each do |linea|
puts linea
end
