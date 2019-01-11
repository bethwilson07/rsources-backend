class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo
  has_many :courses
  has_many :resources, through: :courses
end
