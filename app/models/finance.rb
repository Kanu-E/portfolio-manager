class Finance < ApplicationRecord
    has_many :holdings
    has_many :portfolio, through: :holdings
    validates :name, presence: true, uniqueness: true
end
