class NewUserController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: 'User was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end