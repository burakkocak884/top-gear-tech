class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :garage_id, :customer_id
  has_many :customers
	has_many :customers, through: :vehicles
	belongs_to :garage
end
