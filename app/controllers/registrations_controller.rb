class RegistrationsController < Devise::RegistrationsController

    def account_update_params
    params.require(:user).permit(:first_name, :last_name,:email,:address, :date_of_birth, :social_security_number)
  end
end
