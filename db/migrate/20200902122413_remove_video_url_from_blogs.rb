class RemoveVideoUrlFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :video_url, :string
  end
end
