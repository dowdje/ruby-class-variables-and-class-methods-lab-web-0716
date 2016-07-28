require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    b = {}
    @@genres.each do |type|
      if b.has_key?(type)
        b[type] += 1
      else
        b[type] = 1
      end
      end
      b

  end

  def self.artist_count
    c = {}
    @@artists.each do |type|
      if c.has_key?(type)
        c[type] += 1
      else
        c[type] = 1
      end
    end
      c
  end


end
