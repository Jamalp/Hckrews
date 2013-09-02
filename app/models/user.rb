class User < ActiveRecord::Base
  has_and_belongs_to_many :tags
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
          :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]
end
