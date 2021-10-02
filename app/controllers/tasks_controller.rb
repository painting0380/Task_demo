class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)

		if @task.save
		# 成功
		redirect_to tasks_path, notice: "新增任務成功!"
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
		redirect_to tasks_path, notice: "資料更新成功!"
		else
		# 失敗
		render :edit
		end
	end

	def destroy
		@task = Task.find_by(id: params[:id])
		@task.destroy if @task
		redirect_to tasks_path, notice: "任務資料已刪除!"
	end

	private
		def task_params
		params.require(:task).permit(:title, :content)
	end

end