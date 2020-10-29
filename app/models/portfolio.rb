class Portfolio < ApplicationRecord
    
    belongs_to :user
    has_many :assets
    has_many :classifications, through: :assets

    def to_s
        "#{self.first_name} #{last_name}"
    end

    def portfolio_manager
        user
    end
end
