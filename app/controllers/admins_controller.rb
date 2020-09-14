class AdminsController < ApplicationController
  before_action :user, only: %i[edit update destroy]
  before_action :check_user_admin, only: %i[index edit update destroy]
  before_action :authenticate_user!

  layout 'dashboard'

  def index
    @users = User.all
  end

  def update
    if @user.updale(user_params)
      redirect_to admins_path, notice: 'Users was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admins_path, notice: 'User was successfully destroyed.'
  end

  private

  def user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:role)
  end

  def check_user_admin
    redirect_to pages_home_path unless current_user.admin?
  end
end
