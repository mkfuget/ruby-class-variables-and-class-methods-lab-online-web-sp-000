class Song 
  @@genres = []
  @@artists = []
  @@count = 0
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end
    
  def self.genre_count
    return @@genres
  end
end


