class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates  :comment,
                presence: true,
                length: { maximum: 140 }
  validate  :authority

  def authority
    unless User.find(user_id).comment_flag
      errors.add(:comment, " はできません。管理者にて許可されておりません。")
    end
  end
end
