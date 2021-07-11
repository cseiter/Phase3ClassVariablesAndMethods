class Song
#array item count help
#http://jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/
    attr_accessor :name,:artist,:genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @@artists << artist
        @genre=genre
        @@genres << genre
        @@count += 1
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
        @@genres.each_with_object(Hash.new(0)) {|genre,counts| counts[genre] += 1}
    end

end