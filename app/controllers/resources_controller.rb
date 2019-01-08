class ResourcesController < ApplicationController

  def index
    render json: Resource.all
  end

  def show
    render json: Resource.find(params[:id])
  end

  def new
  end

  def create
  end

  def delete
  end

  
end
