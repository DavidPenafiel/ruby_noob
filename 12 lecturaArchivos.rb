Hola amiguitosh, soy el payaso pennywise!


#el código ejecutado en la consola fue:

C:\Users\Dave\Desktop\pruebas>irb
irb(main):003:0> file = File.open('12 lecturaArchivos.rb','w')
=> #<File:12 archivos>
irb(main):004:0> file.puts 'Hola amiguitosh, soy el payaso pennywise!'
=> nil
irb(main):005:0> file.puts 'quieres un globo?'
=> 17
irb(main):006:0> file.close
=> nil

=> true
irb(main):008:0> file = File.open('12 lecturaArchivos.rb','r')
=> #<File:hola>
irb(main):009:0> file.read
=> "Hola amiguitosh, soy el payaso pennywise!\quieres un globo?"
irb(main):010:0> file.print
=> nil

=> true
irb(main):016:0> File.open('hola','r').read
=> "hola compare\nosea q haces on"
irb(main):017:0> File.open('hola','r').readlines
=> ["hola compare\n", "osea q haces on"]
irb(main):018:0> File.open('hola','r').readline
=> "hola compare\n"


irb(main):027:0> File.open('hola').readlines.each do |linea|
irb(main):028:1* puts linea
irb(main):029:1> end
hola compare
osea q haces on
=> ["hola compare\n", "osea q haces on"]
irb(main):030:0>
