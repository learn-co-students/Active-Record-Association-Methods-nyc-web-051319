class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    a = Artist.find_by(:name => "Drake") # find all artist instances with name as Drake
    if a # if found ...
      self.artist = a # set song instance's artist as that artist instance
    else # if not found ...
      self.artist = Artist.new(:name => "Drake") # set song instance's artist as a new Artist instance w/ name as Drake
    end
  end

end
