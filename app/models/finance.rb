class Finance < ApplicationRecord
    has_many :holdings
    has_many :portfolios, through: :holdings
    validates :name, presence: true, uniqueness: true

    def number_of_assets
        self.each do |assets| {asset.count}
    end
end
