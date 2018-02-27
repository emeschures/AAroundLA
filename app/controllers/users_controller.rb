class UsersController < ApplicationController
  before_action :verify_current_user, only: [:show]
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path @user.id
    else
      flash[:warning] = "Check your email and password"
      redirect_to new_user_path
    end
  end

  def edit
    
  end

  def update
  end

  def destroy
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end 
  def verify_current_user
    redirect_to user_path(current_user.id) unless params[:id].to_i == current_user.id
  end
end
