class CallbacksController < Devise::OmniauthCallbacksController
  def twitter
    if user_signed_in?
      @user = current_user
      redirect_to @user
    else
      @user = User.create_with_omniauth(request.env["omniauth.auth"])
      sign_in_and_redirect @user
    end
  end
end
