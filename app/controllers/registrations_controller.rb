class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # render plain: "Thanks!"
    # render plain: params[:user]  
    #打印 {"email"=>"exite@gmail.com", "password"=>"123", "password_confirmation"=>"12"}

    # @user = User.new(params[:user])
    # User.new({email: "other.goto.com", password: "password", password_confirmation: "password"})

    # @user = User.new(params[:user])
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: I18n.t(:創建帳號成功樣版)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)      
  end

end
