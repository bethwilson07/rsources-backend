class ResourcesController < ApplicationController

  def index
    render json: Resource.all
  end

  def show
    render json: Resource.find(params[:id])
  end

  def create
    render json: Resource.create(resource_params)
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.update(resource_params)
    update_document
    render json: Resource.find(params[:id])
  end

  def destroy
    render json: Resource.find(params[:id]).destroy
  end

  private
    def resource_params
      params.require(:resource).permit(:resource_type, :name, :description, :photo, :course_id, :user_id,
        :document)
    end

    def update_document
      if params[:document]
       @resource.document.purge
       @resource.document.attach(params[:document])
      end
    end
end
