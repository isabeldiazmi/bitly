get '/' do
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 
  erb :index
end

post '/urls' do
  # crea una nueva Url
  puts "-"*100
  link = params[:link]
  puts @url = 'http://bit.ly/' + link.split('').sample(7).join
  puts "-"*100
  
  redirect to '/'
end

# e.g., /q6bda
get '/:short_url' do
  # redirige a la URL original
end
