get '/login' do
  @url = "/login"
  erb :login
end

post '/login' do
  redirect '/'
end

get '/signup' do
  @url = "/signup"
  erb :signup
end

post '/signup' do
  redirect '/'
end

get '/logout' do
  redirect '/'
end
