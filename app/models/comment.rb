class Comment < ApplicationRecord
  belongs_to :blog  # blogsテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
  validates :text, presence: true
end
