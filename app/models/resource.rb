class Resource < ApplicationRecord

  belongs_to :course
  belongs_to :user

  has_many_attached :documents
end
