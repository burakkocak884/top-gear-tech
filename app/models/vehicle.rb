class Vehicle < ApplicationRecord
	belongs_to :customer
	has_many :services
    validates  :make, :model, :year, :mileage, :license_plate, presence: true 
	validates :year, value: {maximum: Date.year} 
end
