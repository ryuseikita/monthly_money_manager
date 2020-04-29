class User < ApplicationRecord
  attr_accessor :remember_token
  has_secure_password
  has_many :permanths, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :delivery, dependent: :destroy
  has_many :services, dependent: :destroy
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

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # ランダムなトークンを返す
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

end
