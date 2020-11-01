class Holding < ApplicationRecord
    belongs_to :finance
    belongs_to :portfolio
end
