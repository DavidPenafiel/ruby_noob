#def saludo1(nombre1, nombre2, nombre3) #VÁLIDO
def saludo1 nombre1, nombre2, nombre3
  puts "TIPO ARGUMENTOS"
  puts "hola #{nombre1}"
  puts "hola #{nombre2}"
  puts "hola #{nombre3}"
end
saludo1 "juan","marco","úrsula"
#saludo1("juan","marco","úrsula") #VÁLIDO
puts "-*-"

def saludo2 (*args)
  puts "TIPO ARREGLO"
  puts "hola #{args[0]}"
  puts "hola #{args[2]}"
  puts "hay #{args.size} elementos en el arreglo"
end
saludo2 "juan","marco","úrsula"
puts "-*-"

#prueba en irb
#haz = {'nombre':'david','edad':34}
#haz[:nombre]
#haz[:edad]

def saludo3 params
  puts "TIPO HASH"
  puts "nombre #{params[:nombre]}"
  puts "apellido #{params[:apellido]}"
  puts "edad #{params[:edad]}"
end
saludo3({'nombre':'david','apellido':'peñafiel','edad':34})
puts "-*-"

puts "TIPO RETORNO DE VARIABLE"
def saludo4 nombre
  "hola" + nombre
end
puts saludo4 'freddy'
