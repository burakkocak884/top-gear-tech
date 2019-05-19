class Appointment < ApplicationRecord
	belongs_to :garage
	belongs_to :customer
	belongs_to :vehicle
	 validates :description, :date, presence: true
accepts_nested_attributes_for :customer, :vehicle
end
