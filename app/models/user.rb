class User < ApplicationRecord
    has_secure_password
    has_many :permanths
    has_many :reviews
    has_one :delivery
    mount_uploader :icon, IconUploader

    before_validation { email.downcase! }
    #空だと更新できてします。
    validates  :password,
                presence: true,
                length: { minimum: 6 },
                allow_nil: true
    validates :name,
                presence: true,
                length: { maximum: 15 }
    validates :email,
                presence: true,
                length: { maximum: 255 },
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                uniqueness: { case_sensitive: false }
end
