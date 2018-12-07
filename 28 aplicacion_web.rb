# la gema necesaria para programar aplicaciones web es: RACK
# gem install rack

# para correr la aplicación web se necesiará un archivo de configuración
# config.ru
# este config corre un método Proc que le solicita a nuestra aplicación
# una cadena inicialización del programa que recibe una variable de entorno
# declarada como |env| de enviroment que es el entorno, desde donde
# recibe todos los datos que envía el cliente, es decir desde la página que
# abre el usuario en su dispositivo, y en este receptor se procesan esos
# datos de usuario

# -*- coding: utf-8 -*-
require 'erb'
   # documentación https://ruby-doc.org/stdlib-2.5.3/libdoc/erb/rdoc/ERB.html

class Application
  # contenidos/index.html.erb
  def self.call(env)
    if env['PATH_INFO'] == '/'
      cuerpo = ERB.new(File.read('contenidos/28 index.html.erb'))
      [200, {"Content-Type" => "text/html;"}, [cuerpo.result]]
    else
      [404, {}, ['No existe esta página!']]
    end
  end
end




# class Application
#   def self.call(env)
#     if env['PATH_INFO'] == '/'
#       [200, {"Content-Type" => "text/html; charset=iso-8859-1"}, ['Bienvenido ni�o dormil�n!']]
#     else
#       [404, {"Content-Type" => "text/html; charset=iso-8859-1"}, ['No existe esta p�gina!']]
#     end
#   end
# end
