class SubjectsController < ApplicationController

  def index
    render json: Subject.all
  end

  def show
    render json: Subject.find(params[:id])
  end


  def create
    render json: Subject.create(subject_params)
  end

  private

    def subject_params
      params.require(:subject).permit(:name, :photo)
    end
end
