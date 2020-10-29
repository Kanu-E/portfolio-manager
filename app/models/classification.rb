class Classification < ApplicationRecord
    has_many :assets
    has_many :portfolios, through: :assets
end
