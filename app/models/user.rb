class User < ActiveRecord::Base
  has_many :surveys
  has_many :responses
  has_many :options, through: :responses
end
