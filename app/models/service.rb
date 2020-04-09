class Service < ApplicationRecord
    has_many :permanths
    has_many :reviews, dependent: :destroy
    belongs_to :user
    mount_uploader :icon, ServiceIconUploader

    validates  :name,
                presence: true,
                length: { maximum: 30 }
    validates  :user_id,
                presence: true
end