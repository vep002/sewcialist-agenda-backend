class TasksController < ApplicationController

    # new task step 3c: uses the project.tasks.create instance method to create a new task using the params sent via formData from the frontend. Sends the new task as a response to the frontend. See frontend code for next step. 
    def create
        task = @project.tasks.create(params[:description], [:start_date], [:end_date])
        render json: task
    end

    def task_params
        params.permit(:description, :start_date, :end_date, :project_id)
    end

end
