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
    if(@@genres.include?(genre))
      @@genres.push(genre)
    end

    if(!@@artists.include?(artist))
      @@artists.push(artist)
    end 
  end
    
  def self.genre_count
    return @@genres
  end
end


