class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.new(name: "Drake")
    self.artist = drake
    #before setiing it, you have to drake equal to a new instance
  end
end
