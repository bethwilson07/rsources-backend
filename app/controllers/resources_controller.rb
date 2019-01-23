class ResourcesController < ApplicationController

  def index
    render json: Resource.all
  end

  def show
    render json: Resource.find(params[:id])
  end

  def create
    @resource = Resource.create(resource_params)
    @resource.documents.attach(params[:resource][:documents])
    render json: @resource
  end

  def update
    Resource.find(params[:id]).update(resource_params)
    Resource.find(params[:id]).attach(params[:resource][:documents])
    render json: Resource.find(params[:id])
  end

  def destroy
    render json: Resource.find(params[:id]).destroy
  end

  private
    def resource_params
      params.require(:resource).permit(:resource_type, :name, :description, :photo, :course_id, :user_id)
    end
end
