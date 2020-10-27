class Portfolio < ApplicationRecord
    belongs_to :user

    def to_s
        "#{first_name} #{last_name}"
    end 

    def portfolio_manager
        self.user
    end
end
