class Garage < ApplicationRecord
	has_many :customes
	has_many :vehicles, through: :customers
	has_many :employess
	belongs_to :user
end
