def saludo tunombre
  puts "hola #{tunombre}!"
end

if ARGV.empty?
  puts "No le diste tu nombre a la aplicación: #{ __FILE__ }"
else
  saludo ARGV[0].capitalize
end
