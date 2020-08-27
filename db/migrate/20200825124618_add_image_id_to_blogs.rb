class AddImageIdToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :image_id, :text
  end
end
