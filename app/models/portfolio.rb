class Portfolio < ApplicationRecord
    belongs_to :user
    
    def to_s
        "#{first_name} #{last_name}"
    end 
end
