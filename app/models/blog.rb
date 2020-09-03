class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  # mount_uploader :youtube_url, VideoUploader
  has_many :comments
  has_many :likes, dependent: :destroy
  # 記事が削除された時にいいねも削除されるように設定 
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
