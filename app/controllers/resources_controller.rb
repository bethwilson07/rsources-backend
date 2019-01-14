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

  def delete
  end

  private
    def resource_params
      params.require(:resource).permit(:resource_type, :name, :description, :photo, :course_id, :user_id)
    end
end
