class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def show
    @post = Post.find(params[:post_id])
    @comments = @post.comments.find(params[:id])
  end

  def create
    post = Post.find(params[:post_id])
    post.comments.create(comment_params)
    redirect_to post
  end

  def update
  end

  def edit
  end

  def destroy
  end

  protected
  def comment_params
    params.require(:comment).permit(:commenter, :body, :location, :email_address)
  end
end
