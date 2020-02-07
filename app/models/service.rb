class Service < ApplicationRecord
    has_many :permanths
    has_many :reviews
    mount_uploader :icon, ServiceIconUploader
end