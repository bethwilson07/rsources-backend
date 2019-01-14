class CoursesController < ApplicationController

  def index
    render json: Course.all
  end

  def show
    render json: Course.find(params[:id])
  end

  def create
    render json: Course.create(course_params)
  end

  private

    def course_params
      params.require(:course).permit(:name, :subject_id)
    end
end
