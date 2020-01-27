class User < ApplicationRecord
    has_secure_password
    has_many :permanths
    has_many :reviews
    has_one :delivery

    before_validation { email.downcase! }
    validates  :password,
                presence: true,
                length: { minimum: 6 }
    validates :name,  
                presence: true, 
                length: { maximum: 30 }
    validates :email, 
                presence: true, 
                length: { maximum: 255 },
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                uniqueness: { case_sensitive: false }
end
