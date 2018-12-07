# heréncia multiple, clase 21 del curso ruby 2017
module Conversion
  def palabra
    return 'uno' if @valor == 1 # condición si valor vale 1 entonces devuelve 'uno'
    'mucho'                     # ELSE si no es uno, devuelve como return 'mucho'
  end
end

class Numero

  #include Conversion      #include es para acceder a sus
  attr_accessor :valor
  def palabra
    @valor.to_s
  end
end
num = Numero.new
num.valor = 1
puts 'Sin extend o include: ' + num.palabra

num.extend(Conversion)
puts 'Con extend: '  + num.palabra

class Nros
  include Conversion      #include es para acceder a sus
  attr_accessor :valor
end
nro = Nros.new
nro.valor = 1
puts 'Con Include: ' + nro.palabra
