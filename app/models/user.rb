class User < ApplicationRecord
    has_secure_password
    has_many :permanths
    has_many :reviews
    has_one :delivery
end
