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
    Song.all {| song | song.genre == self}
   end

   def artists
    songs.map {|genre| genre.artist}
   end
end
