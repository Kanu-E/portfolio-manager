class Finance < ApplicationRecord
    has_many :holdings
    has_many :portfolios, through: :holdings
    validates :name, presence: true, uniqueness: true

    def self.query(finance)
        if finance
            @finances = Finance.all.where('name LIKE :finance' , finance: "%#{finance}%")
        else
            @finances = Finance.all
        end
    end
end
