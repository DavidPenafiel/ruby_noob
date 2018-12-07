class Pantalla
  def initialize(marca)
    @marca =marca
  end
  def marca
    @marca
  end
  def presentacion
    "la marca de este ventilador es #{@marca}"
  end
end

objeto_pantalla = Pantalla.new "samsung"
#objeto_pantalla = Pantalla.new ("ibm")
puts objeto_pantalla.presentacion
puts objeto_pantalla.marca
