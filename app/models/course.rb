class Course < ApplicationRecord
  has_many :resources
  belongs_to :subject
end
