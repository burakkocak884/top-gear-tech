class Appointment < ApplicationRecord
	belongs_to :garage
	belongs_to :customer
	 validates :description, :date, presence: true
	
end
