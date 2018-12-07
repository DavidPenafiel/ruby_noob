require 'nokogiri'
require 'open-uri'

url = 'http://www.reactiongifs.com/'
#3.times do
2.times do |i|
  puts "\nPágina #{i+1}"
  document = Nokogiri::HTML(open(url))
  #puts document
  div_main = document.css('div#main') #para traer un elemento con id main
  #puts  div_main.css('div.post') #para traer un elemento de clase post
  div_main.css('div.post').each do |post|
    #puts post.css('h2')
    title = post.css('h2').text
    gif_url = post.css('div.entry img').attr('src')
    File.open("gifs/#{title}", 'w') do |new_file|
      puts "Descargando gif: #{title}"
      open(gif_url, 'r') do |gif|
        new_file.write(gif.read)
      end
    end
  end
   url = document.css('div.nav-entries div.nav-next a').attr('href')
end
