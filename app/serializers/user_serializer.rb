class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_many :resources
end
