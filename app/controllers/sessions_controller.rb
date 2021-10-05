class SessionsController < ApplicationController

	def new
		
	end

	def create
		user = User.find_by(email: params[:email])
		if user.present? && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to tasks_path, notice: I18n.t(:新增任務成功樣版)
		else
			flash[:alert] = I18n.t(:無效的Email帳號或密碼樣版)
			render :new
		end
		
	end

	def destroy
		session[:user_id] = nil
		redirect_to sign_in_path, notice: I18n.t(:登出樣版)
	end
end