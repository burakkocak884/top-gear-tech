class Customer < ApplicationRecord
	
	has_many :vehicles
	
	belongs_to :appointment , optional: true
    accepts_nested_attributes_for  :vehicles
	#validates :first_name, :last_name, :standing_balance, presence: true
 

end
