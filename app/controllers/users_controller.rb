class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @pairs = @users.
    @user = current_user
  end

  def update
    find_user

    respond_to do |format|
      if @found_user.update_attributes(user_params)
        format.html { redirect_to users_path, notice: "Succes!" }
        format.json { render json: @found_user, status: 200 }
      else
        format.html {render "edit",  notice: "Try again!" }
        format.json { render json: @found_user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def find_user
    @found_user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :admin, :id)
end
end
