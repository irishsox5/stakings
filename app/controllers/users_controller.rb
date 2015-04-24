class UsersController < ApplicationController

  def show
    @user= User.find_by(id: params[:id])

    #Where the User Has Been Invested In
    @weekly_investors=User.find_by(id: params[:id]).investment_relationships.where('created_at >= ?', 1.week.ago).count

    #Where The User Has Made An Investment
    @weekly_investments=User.find_by(id: params[:id]).investor_relationships.where('created_at >= ?', 1.week.ago).count

    #Where the User Has Been Invested In
    @monthly_investors=User.find_by(id: params[:id]).investment_relationships.where('created_at >= ?', 1.month.ago).count

    #Where The User Has Made An Investment
    @monthly_investments=User.find_by(id: params[:id]).investor_relationships.where('created_at >= ?', 1.month.ago).count

  end

  def index
    @activities= PublicActivity::Activity.order("created_at desc").where(owner_id: current_user.investors || current_user.investments, owner_type: "User")
  end

end
