class Garage < ApplicationRecord
	has_many :customers
	has_many :vehicles, through: :customers
	has_many :employess
	belongs_to :user
end
