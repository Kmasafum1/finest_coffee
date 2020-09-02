class AddYoutubeUrlToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :youtube_url, :string
  end
end
