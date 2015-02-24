class PostsController < ApplicationController

  def index
    posts = Post.all
    render json: posts
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: post
  end

  private

  def post_params
    params.require(:post).permit(
    :photo,
    :description,
    :name
    )
  end

end
