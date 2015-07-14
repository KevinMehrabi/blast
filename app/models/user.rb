class User < ActiveRecord::Base


	geocoded_by :full_address
	after_validation :geocode

  
end
