class Language < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["country", "created_at", "id", "language", "updated_at"]
  end	
end
