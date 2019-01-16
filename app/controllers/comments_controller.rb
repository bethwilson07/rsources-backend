class CommentsController < ApplicationController

  def index
    render json: Comment.all
  end

  def show
    render json: Comment.find(params[:id])
  end

  def create
    render json: Comment.create(comment_params)
  end

  def update
    Comment.find(params(:id)).update(comment_params)
    render json: Comment.find(params[:id])
  end

  def destroy
    render json: Comment.find(params[:id]).destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end

end
