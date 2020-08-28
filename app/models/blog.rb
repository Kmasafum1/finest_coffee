class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader     
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
