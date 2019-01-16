class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :course_id, :user_id
  has_many :comments
  belongs_to :course
  belongs_to :user
end
