class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable	

  validates_presence_of :username

end
