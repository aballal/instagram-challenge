class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:description)
  end
end
