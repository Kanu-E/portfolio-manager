class Portfolio < ApplicationRecord

    belongs_to :user

    def to_s
        "#{self.first_name} #{last_name}"
    end

    def portfolio_manager
        user
    end
end
