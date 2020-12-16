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
        @@genres << @genre
        @@artists << @artist
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
        @@genre_count = Hash.new(0)

        @@genres.each do |genre|
            @@genre_count[genre] += 1
        end
        @@genre_count
    end

    def self.artist_count
        @@artist_count = @@artists.each_with_object(Hash.new(0)) do |artist, hash| 
            hash[artist] += 1
        end
    end

end