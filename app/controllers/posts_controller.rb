class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "New Post Added"
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity, notice: "Failed to add Post!"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, notice: "Post was successfully removed."
  end

  private

    def post_params
      params.require(:post).permit(:author, :body)
    end
end
