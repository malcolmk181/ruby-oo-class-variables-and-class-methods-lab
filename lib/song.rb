class Song

    @@all = []
    @@artists = []
    @@genres = []
    @@count = 0
    
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@all << self
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
        dict = {}
        @@genres.each do |genre|
            dict[genre].nil? ? dict[genre] = 1 : dict[genre] += 1
        end
        dict
    end

    def self.artist_count
        dict = {}
        @@artists.each do |artist|
            dict[artist].nil? ? dict[artist] = 1 : dict[artist] += 1
        end
        dict
    end


end 