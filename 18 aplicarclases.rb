#VIDEO NRO 20 DEL CURSO RUBY 2017

class Estrella
  def brillar
    puts 'shine!'
  end
  def arder
    puts 'brennt'
  end
  def presentar
    puts 'Soy una estrella'
  end
end

class Sol < Estrella
  def presentar
    super
    puts '... el inmenso sol!'
  end
end
class Orion < Estrella
  def presentar
    super
    puts '... la remota y inconmensurable Orión!'
  end
end

estrellita = Estrella.new
sol = Sol.new
orion = Orion.new
puts "Clase padre estrella:"
estrellita.presentar
puts "\nClase sol:"
sol.presentar
puts "\nClase orion:"
orion.presentar
