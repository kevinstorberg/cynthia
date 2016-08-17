class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_url
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type, :user_id)
  end
end
