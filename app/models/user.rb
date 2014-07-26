class User < ActiveRecord::Base
  has_many :surveys
  has_many :responses
  has_many :options, through: :responses
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def login
    user = User.find_by_email(params[:email])
    return user.id if user.password == params[:password]
    nil
  end

end
