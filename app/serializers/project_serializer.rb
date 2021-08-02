class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :mock_up, :finished, :description, :in_progress, :completed, :private, :start_date, :end_date
  has_many :tasks
  has_many :materials
end
