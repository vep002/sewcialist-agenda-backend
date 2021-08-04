class MaterialsController < ApplicationController

    def create
        @project=Project.find_by(id: params[:project_id])
        material = @project.materials.create(material_params)
        render json: material
    end

    def material_params
        params.permit(:description, :price, :project_id)
    end

end
