class Artist
  attr_accessor :name, :artist

  @@song_count = 0

  def initialize(name)
    @name = name
    #@artist = artist
    @songs = []
  end

  def songs
    @songs 
    Song.all.select{|song| song.artist == self}
  end

  def artist
    @artist
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    Song.all.count
  end


end

  