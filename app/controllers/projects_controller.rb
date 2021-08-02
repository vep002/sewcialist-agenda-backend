class ProjectsController < ApplicationController
    before_action :authorized, only: [:create, :destroy]

    # new project step 3c: uses the user.projects.create instance method to create a new project using the params sent via formData from the frontend. Automatically assigns a task to the project so that each new project starts with one task. Sends the new project as a response to the front end. See frontend code for next step. 
    def create
        project = @user.projects.create(projects_params)
        task = Task.create(project_id: project.id, description: "Have fun!")
        render json: project
    end

    # delete project step 2b: finds the project based on the project id sent from the frontend. first destroys tasks associated with the project then destroys the project and sends the project as a response to the frontend. see frontend code for next steps. 
    def destroy
        project = @user.projects.find(params[:id])
        project.tasks.destroy_all
        project.destroy
        render json: project
    end

    def projects_params
        params.permit(:description, :mock_up, :start_date, :end_date)
    end
end
