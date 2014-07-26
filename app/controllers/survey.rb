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
  @survey = Survey.find(params[:survey_id])

  erb :"survey/results"
end

get '/survey/show' do
  @surveys = Survey.where(user_id: current_user.id)
  erb :"/survey/show"
end

post '/survey/make' do
  survey = Survey.create(survey_name: params[:survey][:survey_name], user_id: current_user.id)
    params[:survey][:questions].each do |question|
      question_object = Question.create(survey_id: survey.id, question: question[:question])
      question[:options].each do |option|
        Option.create(question_id: question_object.id, choice: option)
      end
    end

  if survey.save
    redirect '/survey/show'
  else
    erb :"/survey/make"
  end
end

post '/survey/take/:survey_id' do

  survey = Survey.find(params[:survey_id])
  survey.questions.each do |question|
    current_user.options << Option.find(params[:"#{question.id}"])
  end



  erb :"/survey/submitted"

  #  if params[:post]
  #   user.taken_surveys << @survey
  #   params[:post].values.each do |answer_id|
  #     user.chosen_answers << Answer.find(answer_id
  #   end
  # end
end
