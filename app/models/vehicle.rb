class Vehicle < ApplicationRecord
	belongs_to :customer
	has_many :services
    validates  :make, :model, :year, :mileage, :license_plate, presence: true 
	validates :year_validation


	def year_validation

	errors.add(:year) unless (1900..Date.today.year).include?(year.to_i)
end


	


end
