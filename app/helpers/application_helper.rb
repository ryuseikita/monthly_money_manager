module ApplicationHelper

  def logged_in?
    current_user.present?
  end

  def login_check
    return redirect_to new_session_path unless logged_in?
  end

  def admin?
    current_user.admin_flag
  end

  def user_money(permanths)
    sum = 0
    permanths.each do | permanth |
      sum= sum + permanth.service.money
    end
    return sum
  end

end
