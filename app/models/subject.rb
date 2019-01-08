class Subject < ApplicationRecord
  has_many :courses
  has_many :resources, through: :courses
end
