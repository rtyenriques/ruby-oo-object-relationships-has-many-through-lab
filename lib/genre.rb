class Genre

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
      @name = name
      @songs = []
      @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.collect {|song| song.artist}
    end

    def self.all
        @@all
    end

end