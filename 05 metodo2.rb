def bisiesto? anio
  if anio % 4 == 0 && (anio % 100 != 0 || anio % 400 == 0)
    puts "El año #{anio} es biciesto loco!"
  else
    puts "El año #{anio} no es biciesto, fuera!"
  end
end

if ARGV.empty?
  puts "No le pasaste un dato a la aplicación: #{ __FILE__ }"
else
  ARGV.each do | a |
    bisiesto? a.to_i
  end
end
