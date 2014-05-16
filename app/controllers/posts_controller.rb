class PostsController < ApplicationController
  # before_action :signed_in_user, only: [:create, :destroy]
  # before_action :correct_user,   only: :destroy

  def new
    #@post = Post.new
    if signed_in?
      @post  = current_user.posts.build
      #@feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to posts_path
    else
      #@feed_items = []
      render 'static_pages/home'
    end
  end

  def index
  @posts = Post.all
  end

  def destroy
    @post.destroy
    redirect_to root_url
  end
  
  def show
    @post = Post.find(params[:id])
  end

  private

    def post_params
      params.require(:post).permit(:content, :image)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end
end
