class ResourceSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :resource_type, :name, :description, :photo, :course_id, :user_id, :documents
  belongs_to :course
  belongs_to :user

  def documents
    return object.documents.map {|d| rails_blob_path(d, only_path: true)}
  end
end
