class CustomerUsersController < ApplicationController

  def index
    @users = CustomerUser.all
  end

  def import
    CustomerUser.import(params[:file])
    redirect_to root_url, notice: "成功"
  end
end
