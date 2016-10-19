class UsersController < ApplicationController
  def new
    @user= User.new
  end

  def create
    if user.create(user_params)
       redirect_to root
      #do somthing
    else
      #do somthing else
    end
  end

  def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
