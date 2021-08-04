class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :acquired, :project_id
  
end
