class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :standing_balance, :garage_id
  belongs_to :appointment
  belongs_to :garage, through: :appointment
  has_many :vehicles
end
