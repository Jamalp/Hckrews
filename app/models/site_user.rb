class SiteUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         # Your original code...
#    devise :database_authenticatable, :registerable,
 #          :recoverable, :rememberable, :trackable, :validatable,
  #         :omniauthable, :omniauth_providers => [:github]


  # # controllers/users/omniauth_callback_controller.rb
  # #  def self.github_oauth(auth, signed_in_resource=nil)
  # #   user = User.where(:provider => auth.provider, :uid => auth.uid).first
  # #   if !user then
  # #     user = User.create(name:auth.extra.raw_info.name,
  # #                          provider:auth.provider,
  # #                          uid:auth.uid,
  # #                          email:auth.info.email,
  # #                          password:Devise.friendly_token[0,20]
  # #                          )
  # #   end
  # #   user

end