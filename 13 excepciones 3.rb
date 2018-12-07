a = 1
b = '2'
begin
  puts a + b
rescue
end
puts "no se puede sumar #{a} y #{b}, uno e ambos no se ha ingresado con el formato correcto"

# > begin, end: para definir un bloque, si no se define dentro de un método
# rescue: para controlar una excepción en caso que pasemos por un código de error
# else: código que se ejecuta si no hubo excepción en el bloque
# ensure: para forzar que se ejecute código así se lance o no una excepción
# raise o fail: para lanzar un excepción
