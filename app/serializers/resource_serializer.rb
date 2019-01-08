class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :description, :course_id, :user_id
  belongs_to :course
  belongs_to :user
end
