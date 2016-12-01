class User < ActiveRecord::Base
  include BCrypt

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authentication(email, password)
    @user = User.find_by(username: username)
    if @user.password == password
      true
    else
      false
    end
  end

end
