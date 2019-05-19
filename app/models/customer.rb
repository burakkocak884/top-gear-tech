class Customer < ApplicationRecord
	
	has_many :vehicles
	has_many :services, through: :vehicles
	belongs_to :appointment , optional: true

	#validates :first_name, :last_name, :standing_balance, presence: true
 

end
