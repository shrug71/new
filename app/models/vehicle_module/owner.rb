module VehicleModule
class Owner < ApplicationRecord
  has_many :ownerships
  has_many :vehicles, through: :ownerships
end
end
