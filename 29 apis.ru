# para este ejemplo de deploy o despliegue vamos a tener instalada la utilidad llamada heroku desde el siguiente link
# https://devcenter.heroku.com/articles/heroku-cli     para windows descargar la aplicación correspondiente
# para linux ejecutar según distro:   sudo snap install --classic heroku    (para Ubuntu 16+)
# verificar la instalación con :      heroku --version
# ya en la terminal se presiona:      heroku login
# si no tienes cuenta te pide que crees una en https://devcenter.heroku.com/articles/heroku-cli y sigue pasos para entrar



#gemas
# gem install rack
# gem install httparty


#este ejemplo viene del ejemplo 28, pero en este caso se resume en un solo .ru
#documentación de la gema   :   http://rack.github.io/

# -*- coding: utf-8 -*-
require 'erb'   # documentación https://ruby-doc.org/stdlib-2.5.3/libdoc/erb/rdoc/ERB.html
require 'httparty'

class Application
  # contenidos/index.html.erb
  def self.call(env)
    if env['PATH_INFO'] == '/'
      url = 'https://jsonplaceholder.typicode.com/posts'
      response = HTTParty.get(url)
      @posts = JSON.parse(response.body)
      @mensaje = "Esto es una variable directa pero el resto del cuerpo es un recorrido tipo selector de elementos."
      # con el método binding más adelante se dará acceso a estas variables @ desde el html
      cuerpo = ERB.new(File.read('contenidos/29 index.html.erb'))
      [200, {"Content-Type" => "text/html;"}, [cuerpo.result(binding)]]
    else
      [404, {}, ['No existe esta página!']]
    end
  end
end

run Application
# para correr esto yo corro la siguiente línea en el cmd en la misma ruta
# rackup "29 apis.ru"
