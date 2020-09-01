class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :comments
  has_many :likes, dependent: :destroy
  # 記事が削除された時にいいねも削除されるように設定 
  has_many :liked_users, through: :likes, source: :user
  
  with_options presence: true do
    validates :title
    validates :body
    # 空のタイトルとボディー（テキスト）をさせないため
  end
  def self.search(search)
    if search
      Blog.where(['title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%"])
    else
      Blog.all
    end
  end
end
