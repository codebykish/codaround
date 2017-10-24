class UsersController < ApplicationController

  def index
    redirect_to new_user_session_path if !user_signed_in?
    @users = User.all
    @user = current_user
  end

  def update
    find_user

    if @found_user.update_attributes(user_params)
      redirect_to users_path
    else
      render "edit",  notice: "Try again!"
    end
  end

  private
  def find_user
    @found_user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :admin)
end
end
