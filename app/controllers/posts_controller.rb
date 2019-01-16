class PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def create
    render json: Post.create(post_params)
  end

  def show
    render json: Post.find(params[:id])
  end

  def update
    Post.find(params[:id]).update(post_params)
    render json: Post.find(params[:id])
  end

  def destroy
    render json: Post.find(params[:id]).destroy
  end

  private
    def post_params
      params.require(:post).permit(:content, :course_id, :user_id)
    end

end
