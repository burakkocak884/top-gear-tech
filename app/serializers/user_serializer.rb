class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :garages
  has_many :appointments, through: :garages
  has_many :customers, through: :appointments
  has_many :vehicles, through: :vehicles
end
