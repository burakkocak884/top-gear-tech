class Vehicle < ApplicationRecord
	belongs_to :customer, optional: true
	has_many :services
    validates  :make, :model, :year, :mileage, :license_plate, presence: true 
    validates :year, inclusion: {in: 1900..Date.today.year, message: "An invalid entry"}
    validates :license_plate, length: {in: 1..8}

	


	


end
