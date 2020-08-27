class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.order(id: "DESC")
  end
  def new
    @blog=Blog.new
  end
  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      redirect_to blogs_path, notice: '投稿に成功しました'
    else 
      render :new
    end    
  end
  def show
    @blog = Blog.find(params[:id])
  end
  def search
  end
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
  end
  private
  def blog_params
    params.require(:blog).permit(:title, :body, :image)
  end
end
