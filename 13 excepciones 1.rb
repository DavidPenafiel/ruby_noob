#MUESTRA

def porcentaje (a, b)
  puts "Variables #{a} - #{b}"
  raise TypeError, 'el primer  argumento no es numérico' if !a.is_a? Numeric
  raise TypeError, 'el segundo argumento no es numérico' if !b.is_a? Numeric
  "#{a} es el " + ((a.to_i * 100) / b.to_i).to_s + "% de #{b}"
end

if ARGV.empty?
  puts "Pásale 2 números separados ejm 10 100 error en: #{ __FILE__ }"
else
  puts porcentaje ARGV[0].to_i, ARGV[1].to_i
end

# begin, end: para definir un bloque, si no se define dentro de un método
# rescue: para controlar una excepción en caso que pasemos por un código de error
# else: código que se ejecuta si no hubo excepción en el bloque
# ensure: para forzar que se ejecute código así se lance o no una excepción
# raise o fail: para lanzar un excepción
