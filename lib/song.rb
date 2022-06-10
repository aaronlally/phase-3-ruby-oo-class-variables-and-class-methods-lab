class Song
attr_accessor :name, :artist, :genre

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
# how many have been created?
    def self.count
        @@count
    end
# a list of unique artists (gets rid of the duplicates)
    def self.artists
        @@artists.uniq
    end
# a list of unique genres ^^ same
    def self.genres
        @@genres.uniq
    end


     # returns a hash of genres as well as the number of genres
    def self.genre_count
       @@genres.tally
    end


    # returns a hash of artists as well as the number of artists
    def self.artist_count
      @@artists.tally
    end
end