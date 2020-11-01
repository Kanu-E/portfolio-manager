class Finance < ApplicationRecord
    has_many :portfolio_finances
    has_many :portfolio, through: :portfolio_finances
    validates :name, presence: true, uniqueness: true
end
