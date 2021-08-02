class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :acquired
  
end
