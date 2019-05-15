class Service < ApplicationRecord
	belongs_to :vehicle

	validates :name, :description, :total_cost, presence: true
end
