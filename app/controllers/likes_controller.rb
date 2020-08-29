class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(blog_id: params[:blog_id])
    # いいねされたuser_idとログインユーザーを結びつけている
    redirect_back(fallback_location: root_path)
    # ex: 一覧画面でいいねした後のページを一覧画面に戻るため
  end
  def destroy
    @blog = Blog.find(params[:blog_id])
    @like = current_user.likes.find_by(blog_id: @blog.id)
    # 現在ログインしているuserがいいね（like）したものをアソシエーションで取得し、
    # その中からいいねを解除する投稿（@blog）を探しています。
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
