class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(id: @user.id), notice: "Thanks for Signing Up!" 
    else
      flash.now[:danger] = @user.errors
      render :new
    end
  end
  
  def new 
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end

  def destroy
  end

  private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
