class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def user_is_admin?
    if user_signed_in? and current_user.admin?
      true
    else
      false
    end
  end
  
  def admin_only
    unless user_is_admin?
      redirect_to root_path, flash[:error] => 'This Area is Accessible only to Admins.'
    end
  end
end
