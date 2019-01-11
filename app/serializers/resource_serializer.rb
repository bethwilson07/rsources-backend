class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :resource_type, :name, :description, :photo, :course_id, :user_id
  belongs_to :course
  belongs_to :user
end
