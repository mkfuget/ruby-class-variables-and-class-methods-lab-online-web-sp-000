class Song 
  @@genres = {}
  @@artists = []
  @@count = 0
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if(@@genres.has_key?(genre))
      @@genres[genre] += 1
    else
      @@genres[genre] = 1
    end
    
    if(!@@artist.has?(artist))
      @@artists.push(artist)
    end 
    
    def self.genre_count
      return 