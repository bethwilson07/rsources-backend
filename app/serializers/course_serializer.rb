class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :subject_id
  has_many :resources
  belongs_to :subject
end
