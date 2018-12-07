#exponer al comportamiento externo a la clase mediante métodos
#proteger los datos internos
#scopes en ruby: public, protected, private

# 1 ATTRIBUTE READER

#esta sería una clase normal
class Horno
  def initialize parametro
    @temperatura = parametro[:temperatura]
  end
  def temperatura
    @temperatura
  end
end

horno1= Horno.new(temperatura: 120)
puts "la temperatura del horno es de #{horno1.temperatura} grados centígrados"
#pero a partir de aquí no habría manera de cambiar la temperatura ya que el procedimiento def temperatura no permite modificar la variable @temperatura con un simple horno1.@temperatura = 210


#esta es una clase con el método attr_reader para la lectura de la variable de instancia @decibeles
class Altavoz
  attr_reader :decibeles, :maxexposicion
  def initialize parametro
    @decibeles = parametro[:maxdecib]
    @maxexposicion = 15
  end
end

altavoz1= Altavoz.new(maxdecib: 112)
puts "el máximo de decibeles del altavoz es de #{altavoz1.decibeles} decibeles, y la máxima exposición al altavoz es de #{altavoz1.maxexposicion} minutos"
#pero a partir de aquí todavía no es posible cambiar el máximo de decibeles del altavoz ya que el método attr_reader solo nos permite leer u obtener la variable @decibeles y no se puede con un simple horno1.@temperatura = 210


#esta es una clase con el método attr_writer para la modificación de la variable de instancia @hojas
class Fotocopiadora
  attr_writer :hojas
  attr_reader :hojas
  def initialize parametro
    @hojas = parametro[:maxhojas]
  end
end

fotocopiadora1= Fotocopiadora.new(maxhojas: 5000)
puts "el máximo de hojas que copia por cartucho de #{fotocopiadora1.hojas} unidades"
fotocopiadora1.hojas = 4500
puts "ahora el máximo de hojas que copia por cartucho de #{fotocopiadora1.hojas} unidades"
#aquí ya es posible cambiar el máximo de hojas del altavoz ya que el método attr_writer nos permite escribir en la variable @hojas pero no se puede leer con un simple puts fotocopiadora1.hojas así que también tuvimos que adicionar el método attr_reader para el ejemplo, pero la utilidad del método attr_writer podría ser útil en casos en donde no debe poderse consultar resultados, solo publicar o dar respustas.


#esta es una clase con el método attr_accessor para la lectura y modificación de la variable de instancia @horas
class Luminaria
  attr_accessor :horas
  def initialize parametro
    @horas = parametro[:maxhoras]
  end
end

luminaria1= Luminaria.new(maxhoras: 8400)
puts "el máximo de horas que ilumina el foco de la luminaria es de #{luminaria1.horas} horas"
luminaria1.horas = 8000
puts "ahora el máximo de horas que ilumina el foco de la luminaria es de #{luminaria1.horas} horas"
#aquí ya es posible leer y modificar las horas de la luminaria ya que el método attr_accessor nos permite escribir en la variable @hojas y también leer con un simple puts luminaria1.horas

MODIFICADORES_DE_ACCESO = 3

PUBLIC = 1
PRIVATE = 2
PROTECTED = 3
class Persona
  attr_accessor :eda
  attr_accessor :eda2
  #público
  # el siguiente es un método público
  def es_mayor_que?(p)
    @eda = self.edad
    @eda > p
  end
  def self.informacion
    "este método se puede llamar sin instanciar la clase"
  end
  protected
  def edad
    calcular_edad
  end
  private
  def calcular_edad
    rand(30)
  end
end

puts Persona.informacion
persona1 = Persona.new
edadMinima = 18
if persona1.es_mayor_que? edadMinima
  puts "La edad de #{persona1.eda} es mayor que #{edadMinima}"
else
  puts "La edad de #{persona1.eda} es menor o igual que #{edadMinima}"
end
#puts persona1.calcular_edad #da error por ser método privado
