class Service < ApplicationRecord
    has_many :permanths
    has_many :reviews, dependent: :destroy
    belongs_to :user
    mount_uploader :icon, ServiceIconUploader

    validates  :name,
                presence: true
    validates  :user_id,
                presence: true
end