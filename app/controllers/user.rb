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
  user = User.create(params[:user])
  errors = []
  if user.valid?
    redirect '/'
  else
    if user.errors.messages[:email]
      errors << "This email has already been taken"
    end
    erb :_user_form, locals: {url: @url, errors: errors}
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
