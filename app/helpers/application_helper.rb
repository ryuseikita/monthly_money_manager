module ApplicationHelper
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        session[:user_id] = user.id
        @current_user = user
      end
    end
  end


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

    # ユーザーのセッションを永続的にする
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
end
