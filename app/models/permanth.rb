class Permanth < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :services

  validates  :user_id,
                presence: true
  validates  :service_id,
                presence: true
  validate   :cancellation_vaild

  def cancellation_vaild
    if cancellation.present?
      if cancellation < Date.today
        errors.add(:cancellation, 'は翌日以降日付を入力してください')
      end
    end
  end
end