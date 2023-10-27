module VehicleModule 
 class Post < ApplicationRecord
	has_one_attached :images
end
end
