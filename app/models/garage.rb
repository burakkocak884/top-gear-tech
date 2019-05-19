class Garage < ApplicationRecord
	has_many :appointments
	has_many :customers, through: :appointments
	has_many :employess
	belongs_to :user
	validates :name, :location, presence: true
	 #accepts_nested_attributes_for :garage, :appointments

end
