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
    
  def self.count
    return @@count
  end
  def genres
    out = []
        @@genres.each do |genre|
      if(out.has_key?(genre))
        out[genre] += 1 
      else 
        out[genre] = 1 
      end 

  def genre_count
    out = {}
      @@genres.each do |genre|
        if(out.has_key?(genre))
          out[genre] += 1 
        else 
          out[genre] = 1 
        end 
      end 
    return out 
  end
end


