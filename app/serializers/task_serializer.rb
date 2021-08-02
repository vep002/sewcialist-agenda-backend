class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :in_progress, :completed, :start_date, :end_date
  
end
