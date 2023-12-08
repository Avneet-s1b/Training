class UsersController < ApplicationController
  before_action :set_user, only: %i[ show ]

  def index
    @users = User.all

    if params[:id].present?
      @search_results = User.find_by(id: params[:id])
      redirect_to user_url(@search_results.id)
    else
      @search_results = nil
    end
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # @user = User.new(name: params[:user][:name],address:params[:user][:address])
    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :address, :phone)
  end
end
