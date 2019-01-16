class Course < ApplicationRecord
  has_many :resources
  has_many :posts
  has_many :comments, through: :posts
  belongs_to :subject
end
