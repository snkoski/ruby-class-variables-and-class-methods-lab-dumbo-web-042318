require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_hash = {}
    @@genres.map do |genre|
       if genre_hash.has_key? genre
         genre_hash[genre] += 1
       else
         genre_hash[genre] = 1
      end
    end
    genre_hash
  end

   def self.artist_count
     artist_hash = {}
     @@artists.each do |artist|
       if artist_hash.has_key? artist
         artist_hash[artist] += 1
       else
         artist_hash[artist] = 1
       end
     end
     artist_hash
   end

end
 # song1 = Song.new("first", "first-artist", "rap")
 # song2 = Song.new("second", "second-artist", "rap")
 # song3 = Song.new("third", "third-artist", "country")
 # song4 = Song.new("fourth", "fourth-artist", "rap")
 # song5 = Song.new("five", "first-artist", "country")
 #
 #  binding.pry
 #  true
