class Portfolio < ApplicationRecord
    has_many :holdings
    has_many :finances, through: :holdings
    belongs_to :user
    validates :code, presence: true, uniqueness: true

    def to_s
        "#{self.first_name} #{last_name}"
    end

    def portfolio_manager
        user
    end

    def total_value
        total = 0
        values = self.finances.collect {|finance| finance.current_value}
        values.inject{|total,x| total + x }
    end

end
