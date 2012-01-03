module ApplicationHelper
  def user_is_admin?
    if user_signed_in? and current_user.admin?
      true
    else
      false
    end
  end
end
