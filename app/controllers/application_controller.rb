class ApplicationController < ActionController::Base
  #もしdeviseのコントローラーの事なら全てのアクションの前にメソッドを読み込む
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
  
  def after_sign_up_path_for(resource)
    user_path(current_user)
  end
  
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  
  private
  def configure_permitted_parameters
    #新規登録機能について
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
