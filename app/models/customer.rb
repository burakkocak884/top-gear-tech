class Customer < ApplicationRecord
	
	has_many :vehicles
	has_many :services, through: :vehicles


end
