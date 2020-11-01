class Portfolio < ApplicationRecord
    has_many :portfolio_assets
    has_many :assets, through: :portfolio_assets
    belongs_to :user
    validates :code, presence: true, uniqueness: true

    def to_s
        "#{self.first_name} #{last_name}"
    end

    def portfolio_manager
        user
    end
end
