class ApplicationController < ActionController::Base

  protected

  def after_sign_in_path_for(user)
    return root_path
  end

  def after_sign_out_path_for(user)
    return new_user_registration_path
  end
end
