get '/survey/take' do
  @surveys = Survey.all
  erb :"survey/list"
end

get '/survey/take/:survey_id' do

  @survey = Survey.find_by(id: params[:survey_id])
  erb :"survey/take"
end

get '/survey/make' do

  erb :"survey/make"
end

get '/survey/results/:survey_id' do

  erb :"survey/results"
end

get '/survey/show' do
  @surveys = Survey.where(user_id: current_user.id)
  erb :"/survey/show"
end

post '/survey/make' do
  survey = Survey.new(survey_name: params[:survey_name], user_id: current_user.id)
  question = Question.new(question: params[:question])
  option = Option.new(choice: params[:option])
  question.options << option
  survey.questions << question
  survey.save
  question.save
  option.save

  if survey.save
    redirect to('/survey/show')
  else
    erb :"/survey/make"
  end
end

post '/survey/take/:survey_id' do
  survey = Survey.find(params[:survey_id])
  survey.questions.each do |question|
    temp = question.id
    current_user.options << Option.find(params[temp.to_sym])
  end



  erb :"/survey/submitted"
end
