class Like < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates_uniqueness_of :blog_id, scope: :user_id
  # 一人のユーザーのいいねを一回までと制限する
end
