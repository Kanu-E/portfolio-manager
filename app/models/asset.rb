class Asset < ApplicationRecord
  belongs_to :category
  belongs_to :portfolio

  validates :title, presence: true, uniqueness: true
end
