class Employee < ApplicationRecord
	belongs_to :garage
	validates :first_name, :last_name, :gender, :age, presence: true
end
