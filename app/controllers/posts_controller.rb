class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end

  def new
  end

  def create
    # Post.create(content: params[:content])
    post = Psost.create(content: params[:content])
    render json:{ post: post}
    # redirect_to action: :index
  end
end
