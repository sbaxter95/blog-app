class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
   @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    new_post = Post.create(post_params)
    new_post.save

    redirect_to new_post
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)

    redirect_to post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to '/posts'
  end

  protected
  def post_params
    params.require(:post).permit(:title, :body, :author, :image, :category)
  end

end
