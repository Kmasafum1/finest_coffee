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
  has_many :reviews, dependent: :destroy
  def avg_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end
