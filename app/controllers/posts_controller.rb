class PostsController < ApplicationController
  def index
  end


  def new
    @posts=Post.new
  end

  def edit
  end

  def create
    @posts = Post.new(:title=>params[:post][:title], :description=>params[:post][:description])

    if @posts.save

    else
      redirect_to 'posts/new'
    end

  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @posts = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:post).permit(:title, :description)
  end
end
