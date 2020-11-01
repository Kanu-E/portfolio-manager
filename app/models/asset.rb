class Asset < ApplicationRecord
  has_many :portfolio_assets
  has_many :assets, through: :portfolio_assets
  validates :name, presence: true, uniqueness: true
end
