class Option < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  has_many :responses
  has_many :users, through: :responses
end
