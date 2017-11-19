require 'rails_helper'

Rspec.describe Song, type: :model do
describe "validations" do
  it "is invalid without name" do
    song = Song.new(song_name: "")
  end
end

describe "association with artist" do
  it "belongs to a artist" do
    artist = Artist.new()
    song = artist.songs.build()

    expect(song.artist).to eq(artist)

end
