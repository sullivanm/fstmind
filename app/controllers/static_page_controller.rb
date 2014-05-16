class StaticPageController < ApplicationController
  def posts
    if signed_in?
      @post  = current_user.posts.build
      #@feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def blog
  end

  def questions
  end
end
