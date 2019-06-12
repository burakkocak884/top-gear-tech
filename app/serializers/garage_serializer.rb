class GarageSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :tire_service, :service_any_vehicle
  has_many :appointments
  has_many :customers, through: :appointments
  has_many :vehicles, through: :vehicles
end
