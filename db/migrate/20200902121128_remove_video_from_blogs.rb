class RemoveVideoFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :video, :string
  end
end
