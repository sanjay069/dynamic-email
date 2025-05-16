class Template < ApplicationRecord
	def self.ransackable_attributes(auth_object = nil)
    	["boby", "created_at", "id", "title", "updated_at"]
  	end
end
