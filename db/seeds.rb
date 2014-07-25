survey_creator = User.new(email: "test@test.com", password_hash: "tester123")
survey_creator.save

survey_taker = User.new(email: "test@test.com", password_hash: "tester123")
survey_taker.save

survey = Survey.new(user_id: 1, survey_name: "THE SURVEY")
survey.save

# user.surveys << survey

question = Question.new(survey_id: 1,question: "this is a test?")
question.save

# survey.questions << question

option = Option.new(question_id: 1, choice: "Yes, it is.")
option.save

# question.options << option

response = Response.new()
response.save

# response.option = option
# response.user = user

survey_creator.options << option
