class User < ApplicationRecord
    has_secure_password
    has_many :portfolios
    has_many :classifications, through: :portfolios
end
