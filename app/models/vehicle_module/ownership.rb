module VehicleModule 
  class Ownership < ApplicationRecord
  belongs_to :vehicle, polymorphic: true
  belongs_to :owner
  end
end
