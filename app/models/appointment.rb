class Appointment < ApplicationRecord
	belongs_to :garage
	belongs_to :customer
	
end
