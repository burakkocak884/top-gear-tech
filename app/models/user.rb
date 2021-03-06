class User < ApplicationRecord
 

  has_many :garages
  has_many :customers, through: :garages
  has_many :appointments, through: :garages
  has_many :vehicles, through: :appointment
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

	 devise :database_authenticatable,:registerable, :recoverable, :rememberable, :validatable, :omniauthable
    validates  :email, :password, presence: true 
    validates :email, confirmation: true
    validates :password, length: {minimum: 6}

    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    		
        user.provider = auth.provider
    		#user.username = auth.info.username
    		user.uid = auth.uid
        user.email = auth.info.email

    		user.password = Devise.friendly_token[0,20]
    	end
    end

    
end
