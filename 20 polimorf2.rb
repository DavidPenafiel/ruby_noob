require './20 polimorfismo'
#'colegio 1'
#profesordf = Profe_Fisica.new
#profesordf.ejercitar
#profesordf.evaluar

class Colegio < Profesor
  def formación
    puts "presentación del día en el colegio"
  end
  def declamar
    puts "el director declama en el colegio"
  end
end

class Jardin < Profesor
  def formación
    puts "presentación del día en el jardín"
  end
end

colegio = Colegio.new
puts colegio.formación
puts colegio.declamar

jardincito = Jardin.new
puts jardincito.formación
puts jardincito.declamar
