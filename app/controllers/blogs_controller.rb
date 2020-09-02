class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.order(id: "DESC")
    # @blogs = Blog.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
    @blogs = Blog.all.page(params[:page]).per(5)
  end

  def new
    @blog=Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    url = params[:blog][:youtube_url]
    url = url.last(11)
    @blog.youtube_url = url
    if @blog.save
      redirect_to blogs_path, notice: '投稿に成功しました'
    else 
      render :new
    end    
  end

  def edit
    @blog = Blog.find(params[:id])
    if @blog.user_id != current_user.id
    # 投稿した内容に結びついている(ユーザーの)idとログインユーザーが等しくない場合
     redirect_to blogs_path, alert:  '不正なアクセスです。'
    end
  end

  def show
    @blog = Blog.find(params[:id])
    @comment = Comment.new
    @comments = @blog.comments.includes(:user).order(created_at: :desc)
  end

  def search
    @blogs = Blog.search(params[:keyword])
    respond_to do |format|
      format.html 
      format.json 
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blog_path(@blog), notice: '更新に成功しました'
    else
      render :edit
    end
  end 

  private
  def blog_params
    params.require(:blog).permit(:title, :body, :image).merge(user_id: current_user.id)
  end
end

