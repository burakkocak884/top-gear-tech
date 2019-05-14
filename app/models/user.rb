class User < ApplicationRecord
	has_many :garages
	has_many :customers, through: :garage
end
