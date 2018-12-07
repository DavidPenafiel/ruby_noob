def primo nro
  x=0
  if nro >= 2
    if nro == 2 ? x = 2 : x = (nro - 1); end
    (2..x).each do |i|
      if nro % i == 0 && !(nro == 2 && i == 2)
        return false
      end
    end
  else
    puts "El número #{nro} debe ser un entero mayor a 1."
  end
  true
end

if ARGV.empty?
  puts "No le pasaste un dato a la aplicación: #{ __FILE__ }"
else
  ARGV.each do | a |
    if primo a.to_i
      puts "#{a} es primo"
    else
      puts "#{a} no es primo"
    end
  end
end
