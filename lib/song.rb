class Song

    attr_accessor :name,:artist,:genre

    @@count = 0
    @@artists = []

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @@artists<<artist
        @genre=genre
        @@count+=1
    end

    def self.count
        @@count
    end


end