class User < ApplicationRecord

	devise :database_authenticatable,:registerable, :recoverable, :rememberable, :validatable, :omniauthable
    validates  :email, :password, presence: true 
    validates :email, confirmation: true
    validates :password, length: {minimum: 6}

    def self.from_omniauth(auth)
    	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    		user.provider = auth.provider
    		user.name = uth.info.name
    		user.uid = auth.info.email
    		user.password = Devise.friendly_token[0,20]
    	end
    end
end
