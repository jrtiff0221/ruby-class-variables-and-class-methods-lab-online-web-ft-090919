class Song 
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres =[]
    @@artists = []
  
  def initialize (name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres 
    @@genres.uniq 
  end
  def self.artists
   @@artists.uniq
  end 
  
  def self.genre_count
    genre_count = {}
    @@genres.each { |genre|
      puts "genre #{genre}"
      puts "count %{genre_count}"
      if !genre_count[genre] 
        genre_count[genre] = 0
      end
      genre_count[genre] += 1 
    }
    genre_count
  end
  
end
