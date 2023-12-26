class UsersController < ApplicationController
  def signup
    @user = User.new
    @page_var = 1
  end

  def create
    @user = User.new(user_params)

    @user.save
    reset_session
    redirect_to signin_url
  end

  def signin
    @page_var = 0
  end

  def sessions
    @user = User.find_by(email: params[:email])
    redirect_url = signin_url
    if @user && @user.password == params[:password]
      session[:user] = @user
      redirect_url = home_url
    end
    flash[:error] = "Invalid email or password."
    redirect_to redirect_url
  end

  def logout
    session[:user] = nil
    flash[:error] = ""
    redirect_to signin_url
  end

  def home
    u = session[:user]
    @user = User.find_by(email: u["email"])
  end


  private

  def user_params
    params.require(:user).permit(:email, :name, :phone, :password, :gender, :country, :profile_image)
  end
end
