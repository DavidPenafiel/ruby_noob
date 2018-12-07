def fibonacci fin
  i = fin
  j = 0
  a = [1,2]
  while j < fin
    j += 1
    a.push a[-1] + a[-2]
  end
  puts "En la serie fibonnacci pasados 1,2 los #{fin} siguientes números son."
  puts a
  puts "Y la suma de sus números impares es:"
  puts a.select {|i| i % 2 != 0 }.reduce(:+)
end

if ARGV.empty?
  puts "Ejemplo: 10 fibonacci con ruby.rb 5 - No le pasaste un dato a la aplicación: #{ __FILE__ }"
else
    fibonacci ARGV[0].to_i
end
