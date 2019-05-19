class Appointment < ApplicationRecord
	belongs_to :garage
	belongs_to :customer
	 validates :description, :date, presence: true
accepts_nested_attributes_for :customer
end
