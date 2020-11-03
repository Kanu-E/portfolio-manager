class Holding < ApplicationRecord
    belongs_to :finance
    belongs_to :portfolio
    accepts_nested_attributes_for :finance, reject_if: proc { |attributes| attributes['name'].blank? }
end
