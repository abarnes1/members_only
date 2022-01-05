class PostsController < ApplicationController
  include ApplicationHelper

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    flash[:notice] = 'Message deleted.'

    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
