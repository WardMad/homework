class AddInfoToArtist < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :info, :string
    add_column :artists, :url, :string
    add_column :artists, :video, :string
  end
end
