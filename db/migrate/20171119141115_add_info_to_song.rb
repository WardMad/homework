class AddInfoToSong < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :created, :boolean
  end
end
