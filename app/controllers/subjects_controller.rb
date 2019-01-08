class SubjectsController < ApplicationController

  def index
    render json: Subject.all
  end

  def show
    render json: Subject.find(params[:id])
  end

end
