class Permanth < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates  :user_id,
                presence: true
  validates  :service_id,
                presence: true
  validate   :cancellation_vaild

  def cancellation_vaild
    if cancellation.present?
      errors.add(:cancellation, 'は翌日以降日付を入力してください') if cancellation < Date.today
    end
  end
end
