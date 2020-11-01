class Finance < ApplicationRecord
    has_many :holdings
    has_many :portfolios, through: :holdings
    validates :name, presence: true, uniqueness: true


end
