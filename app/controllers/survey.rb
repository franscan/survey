get '/survey/take/:id' do

  @id = params[:id]
  erb :"survey/take"
end

get '/survey/make/:user_id' do

  erb :"survey/make"
end

get '/survey/results/:survey_id' do

  erb :"survey/results"
end

get '/survey/show/:user_id' do

  erb :"/survey/show"
end

post '/survey/make' do
  @survey = Survey.new(params[:survey])
  if @survey.save
    redirect to('/survey/show')
  else
    erb :"/survey/make"
  end

end
