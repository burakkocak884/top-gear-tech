class Garage < ApplicationRecord
	has_many :customers
	has_many :vehicles, through: :customers
	has_many :employess
	belongs_to :user
	validates :name, :location, presence: true

end
