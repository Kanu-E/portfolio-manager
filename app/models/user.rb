class User < ApplicationRecord
    has_secure_password
    has_many :portfolios
    validates :email, presence: true, uniqueness: true
end
