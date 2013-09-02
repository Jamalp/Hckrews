class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
          :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]
end