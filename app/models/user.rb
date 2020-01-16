class User < ApplicationRecord
    has_secure_password
    has_many :permanths
    belongs_to :delivery
    has_many :reviews
end
