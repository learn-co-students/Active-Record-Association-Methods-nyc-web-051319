class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    a = Artist.find_by(:name => "Drake") # finds all instances of Artists with a name of Drake
    if a # if found...
      self.artist = a # set song instance's artist equal to that artist instance found
    else # if not found...
      self.artist = Artist.new(:name => "Drake") # set song instance's artist equal to a new instance of an artist w/ name Drake
    end
  end

end
