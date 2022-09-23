class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # byebug
    if @user.save
      redirect_to root_path, success: "You are registered"
    else
      render users_new_path, danger: "Invalid email and password"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
