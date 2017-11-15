class CreateAddInfoToArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :add_info_to_artists do |t|
      t.text :info
      t.string :url
      t.string :video

      t.timestamps
    end
  end
end
