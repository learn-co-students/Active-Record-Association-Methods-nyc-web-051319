class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    #self.songs.select do |song|
      self.songs.size
      #binding.pry
end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artists.map do |artist| #asking for array so iterate
      artist.name #bc we're asking just for artist's names
    end
  end
end
