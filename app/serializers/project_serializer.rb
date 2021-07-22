class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :mock_up, :finsihed, :description, :in_progress, :completed, :private, :start_date, :end_date
  has_one :user
end
