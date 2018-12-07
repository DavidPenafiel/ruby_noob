class MantenimientoA
  def initialize(parametros)
    @equipo = parametros[:equipo]
    @horasTrabajadas = 0
    @maxHoras = parametros[:maxHoras]
    puts "la marca de este equipo es #{@equipo} y su vida útil es de #{@maxHoras} horas"
    puts "Registro de inspección semanal de horas de trabajo:"
  end
  def registroHoras horas
    @horasTrabajadas += horas
    if @horasTrabajadas >= @maxHoras
      puts "El equipo ha trabajado  #{@horasTrabajadas} horas, el límite es de #{@maxHoras} horas."
      @horasTrabajadas = 0
      "Después de un mantenimiento 'overhaul' las horas acumuladas es de #{@horasTrabajadas} horas "
    else
      "Inspección: #{horas} horas, total de horas acumuladas #{@horasTrabajadas}"
    end
  end
end

mantto = MantenimientoA.new equipo: 'suzuki', maxHoras: 2200
puts mantto.registroHoras 200
puts mantto.registroHoras 500
puts mantto.registroHoras 200
puts mantto.registroHoras 800
puts mantto.registroHoras 200
puts mantto.registroHoras 500
