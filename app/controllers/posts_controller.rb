class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    @likes = Like.all
  end

  def show
    redirect_to posts_url
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params.merge(user_id: current_user.id))
    redirect_to posts_url
  end

  def like
    Like.create
    redirect_to posts_url #change to root 
  end

  private

  def post_params
    params.require(:post).permit(:message, image: [])
  end
end
