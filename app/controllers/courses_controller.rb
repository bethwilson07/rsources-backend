class CoursesController < ApplicationController

  def index
    render json: Course.all
  end

  def show
    render json: Course.find(params[:id])
  end

  def new
  end

  def create
  end
  
end
