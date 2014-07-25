class Response < ActiveRecord::Base
  belongs_to :option
  belongs_to :user
end
