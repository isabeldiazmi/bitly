get '/' do
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 
  @ans = Url.all
  erb :index
end

post '/urls' do
  # crea una nueva Url
  @link = params[:link]
  puts @link
  @url = 'http://bit.ly/' + @link.split('').sample(7).join
  Url.new(original_url: @link, short_url: @url).save
  
  redirect to '/'
end

# e.g., /q6bda
get '/:short_url' do
  corto = params[:short_url]
  tuple = Url.find(short_url: corto)
  #tuple.click_count += 1
  tuple.save!
  real_url = tuple.original_url
  redirect to ("#{real_url}")
end