class AddVideoToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :video, :string
  end
end
