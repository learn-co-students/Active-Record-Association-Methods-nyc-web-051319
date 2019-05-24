class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    artists = self.songs.map do |song|
      song.artist
    end
    artists.size
  end

  def all_artist_names
    self.songs.map do |song|
      song.artist.name
    end
  end

end
