class TasksController < ApplicationController

    # new task step 3c:
    def create
        @project=Project.find_by(id: params[:project_id])
        task = @project.tasks.create(task_params)
        render json: task
    end

    def update 
        @project=Project.find_by(id: params[:project_id])
        task = @project.tasks.update(completed: params[:completed])
    end

    def task_params
        params.permit(:description, :start_date, :end_date, :completed, :project_id)
    end

end
