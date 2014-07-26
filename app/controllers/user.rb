get '/login' do
  @url = "/login"
  erb :login
end

post '/login' do
  session[:user_id] = User.login(params[:user])
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
