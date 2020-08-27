class RemoveImageIdFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :image_id, :text
  end
end
