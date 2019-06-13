class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :garage_id, :customer_id
   belongs_to :customer
	belongs_to :vehicle
	#belongs_to :garage
end
