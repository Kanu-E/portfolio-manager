class PortfolioAsset < ApplicationRecord
    belongs_to :asset
    belongs_to :portfolio
end
