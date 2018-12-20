class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def name
    self.email.split('@').first
  end

  def profile_url
    "/users/#{self.id}"
  end

  def avatar_url
    "https://avatars1.githubusercontent.com/u/44141526?s=40&amp;v=4"
  end

  def admin?
    self.email == 'huacnlee@gmail.com'
  end
end
