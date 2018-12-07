# el web scrapping permite comparar contenidos web
# para hacer scrapping en una página podríamos instalar el complemento siguiente
# gem install nokogiri

require 'nokogiri'
require 'open-uri'

url = 'http://www.reactiongifs.com/'
#3.times do
3.times do |i|
  puts "\nPágina #{i+1}"
  document = Nokogiri::HTML(open(url))
  #puts document
  div_main = document.css('div#main') #para traer un elemento con id main
  #puts  div_main.css('div.post') #para traer un elemento de clase post
  div_main.css('div.post').each do |post|
    #puts post.css('h2')
    puts post.css('h2').text
    puts post.css('div.entry img').attr('src')
  end
   url = document.css('div.nav-entries div.nav-next a').attr('href')
end
