class PortfolioAsset < ApplicationRecord
    belongs_to :Asset
    belongs_to :Portfolio
end
