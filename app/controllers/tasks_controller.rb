class TasksController < ApplicationController

	def index
		    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
		
		@tasks = Task.order(params[:sort])

		if params[:title] || params[:status]
			@tasks = Task.search_title_or_content( "%"+params[:title]+"%" )			
			.search_status_type("%"+params[:status]+"%")
			.order_by_created_at
			.page(params[:page]).per(6)

		elsif params[:sort]
        	@tasks = Task.order(params[:sort]).page(params[:page]).per(6)

        else
            @tasks = Task.order_by_created_at.page(params[:page]).per(6)

        end

	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)

		if @task.save
		# 成功
		redirect_to tasks_path, notice: I18n.t(:新增任務成功樣版)
		else
		# 失敗
		render :new
    	end
	end

	def edit
		@task = Task.find_by(id: params[:id])
	end

	def update
		@task = Task.find_by(id: params[:id])

		if @task.update(task_params)
		# 成功
		redirect_to tasks_path, notice: I18n.t(:資料更新成功樣版)
		else
		# 失敗
		render :edit
		end
	end

	def destroy
		@task = Task.find_by(id: params[:id])
		@task.destroy if @task
		redirect_to tasks_path, notice: I18n.t(:任務資料已刪除樣版)
	end

	private
		def task_params
		params.require(:task).permit(:title, :content, :end_time, :status_type, :priority_type)
	end

end