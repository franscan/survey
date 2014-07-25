get '/login' do
  @url = "/login"
  erb :login
end

post '/login' do
  redirect '/'
end
