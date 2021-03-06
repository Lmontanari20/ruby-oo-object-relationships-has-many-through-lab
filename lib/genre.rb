require 'pry'
class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs 
        #binding.pry
        Song.all.select{ |song| song.genre == self}
    end

    def artists 
        self.songs.map{ |song| song.artist}
    end
end
