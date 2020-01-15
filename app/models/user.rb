class User < ApplicationRecord
    has_secure_password
    has_many :permanths
    has_one :delivery
    has_many :reviews
end
