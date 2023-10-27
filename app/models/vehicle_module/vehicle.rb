module VehicleModule
  class Vehicle < ApplicationRecord
    self.inheritance_column = :type # Specify the column for STI

    validates :brand, presence: true
    validates :type, presence: true
    
  has_many :ownerships, dependent: :destroy
  has_many :owners, through: :ownerships, source: :owner
  has_many :users, through: :ownerships
  
    # Callbacks
    before_save :normalize_brand

    private

    def normalize_brand
      self.brand = brand.capitalize if brand.present?
    end
  end
end