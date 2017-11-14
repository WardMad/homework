require 'rails_helper'

describe "association with artist" do
  let(:artist) { create :song }

  it "belongs to a artist" do
    song = artist.songs.build(home_type: "Shared")

    expect(song.artist).to eq(artist)
  end

  # OR, go the shoulda way:

    it { is_expected.to belongs_to :artist}
end
