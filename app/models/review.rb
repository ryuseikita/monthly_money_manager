class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates  :comment,
                presence: true,
                length: { maximum: 140 }
  
end
