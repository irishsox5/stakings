class SessionsController < Devise::OmniauthCallbacksController
  def create
    auth = request.env["omniauth.auth"]
    puts auth["credentials"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    flash[:notice] = "Signed In"
    redirect_to users_url
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Signed Out"
    redirect_to root_url
  end
end
