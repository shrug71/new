module VehicleModule
class User < ApplicationRecord
  has_many :ownerships
  has_many :vehicles, through: :ownerships
end
end
