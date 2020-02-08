class Service < ApplicationRecord
    has_many :permanths
    has_many :reviews, dependent: :destroy
    mount_uploader :icon, ServiceIconUploader
end