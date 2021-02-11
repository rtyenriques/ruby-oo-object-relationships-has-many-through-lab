class Artist
  attr_accessor :name, :songs, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(song, genre)
    Song.new(song, self, genre)

  end

  def genres
    songs.collect {|song| song.genre}
  end




end