class Response < ActiveRecord::Base
  has_many :options
  has_many :users
end