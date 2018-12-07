class Profesor
  def dictar
    puts 'dictar clases'
  end
  def evaluar
    puts 'evaluar exámen'
  end
  def declamar
    puts 'declamar en público'
  end
end

class Profe_Fisica < Profesor
  def dictar
    puts 'no puedo dictar clases solo ejercitar'
  end
  def ejercitar
    puts 'enseñando a ejercitar'
  end
  def evaluar
    super()
    puts 'de educación física'
  end
end

#profe_mat = Profesor.new
#profe_f = Profe_Fisica.new
#profe_mat.dictar
#profe_f.dictar
#profe_f.ejercitar
#profe_f.evaluar
