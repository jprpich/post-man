require 'sinatra'

get '/' do
  erb :index
end

men = []

get '/men' do
  @men = men
  erb :men
end

get '/men/new' do
  erb :new
end

post '/men' do
  men.push({
    :name => params["name"],
    :age => params["age"],
    :color => params["color"]
  })
  redirect '/men'
end



