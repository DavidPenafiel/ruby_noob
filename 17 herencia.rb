HERENCIA = 0
# mecanismo para reutilizar código
# una clase hija extiende el comportamiento de otra clase padre
# aplican los modificadores de acceso: public, private y protected
# se pueden sobre-escribir los métodos
# todas las clases heredan de BasicObject
# no existe herencia múltiple

class Mamifero
  def respirar
    puts 'está respirando'
  end
end

class Gato < Mamifero
  def maullar
    puts 'está maullando'
  end
end

mamifero1 = Mamifero.new
gato1 = Gato.new

mamifero1.respirar
gato1.respirar
gato1.maullar


SUPER = 1

class Personal
  attr_accessor :nombre
  def initialize(nombre)
    @nombre = nombre
  end
  def dormir nroH
    puts "duerme #{nroH} horas"
  end
end

class Empleado < Personal
  def initialize
    super('David')
  end
  def dormir
    super(8)
  end
end

personal = Personal.new("José")
#puts personal.nombre
empleado = Empleado.new
puts personal.nombre
puts empleado.nombre
personal.dormir 6
empleado.dormir
