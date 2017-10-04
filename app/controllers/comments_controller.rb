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

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      redirect_to @post
    else
      render :new
    end
  end
 
 def update
   @comment = Comment.find(params[:id])
   if @comment.update(comment_params)
     redirect_to @comment
   else
     render :edit
   end
 end

  def destroy
    post = Post.find(params[:post_id])
    post.comments.destroy(params[:id])
    redirect_to posts_url
  end

  protected
  def comment_params
    params.require(:comment).permit(:commenter, :body, :location, :email_address)
  end
end
