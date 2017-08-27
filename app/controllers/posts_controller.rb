class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.all.reverse
  end

  def new

  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:picture, :description)
  end
end
