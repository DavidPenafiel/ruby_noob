class Pantalla
  def marca=(marca)
    @marca = marca
  end
  def presentacion
    "la marca de este ventilador es #{@marca}"
  end
end

objeto_pantalla = Pantalla.new
objeto_pantalla.marca = "LG"
puts objeto_pantalla.presentacion
