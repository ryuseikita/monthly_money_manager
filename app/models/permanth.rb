class Permanth < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates  :user_id, presence: true
  validates  :service_id, presence: true
end
