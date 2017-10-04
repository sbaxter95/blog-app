class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def show
  end

  def create
  end

  def update
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
