#'los bloques limitados que puedes necesitar correr en un IRB también puedes enviarselos de esta manera a un procedimiento'
def ejecutar(&blocks)
  if block_given?
    blocks.call
  else
    puts 'no enviaste bloque'
  end
end
ejecutar {puts 'hola broster!'}

def ejecutar2
  if block_given?
    yield
  else
    puts 'no enviaste bloque'
  end
end
ejecutar2 {puts 'hola mariscal!'}


#lamblas y procs permiten declarar procedimientos como variables, que contienen bloques

saludo1 = lambda {|nombre| puts "Hola ps #{nombre}"}
saludo1.call("Dave")

saludo2 = proc {|nombri,a| puts "Hola ps #{nombri} #{a}"}
saludo2.call("Fredd","Dave")
