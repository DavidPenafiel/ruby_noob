  class Pantalla
  def initialize(parametros)
    @marca = parametros[:marca]
    @velocidad = parametros[:velocidad]
  end
  def marca
    @marca
  end
  def presentacion
    "la marca de este ventilador es #{@marca} y su máxima velocidad es #{@velocidad}"
  end
end

objeto_pantalla = Pantalla.new marca: 'suxuki', velocidad: 110
#objeto_pantalla = Pantalla.new (marca: 'suxuki', velocidad: 110)
puts objeto_pantalla.presentacion
