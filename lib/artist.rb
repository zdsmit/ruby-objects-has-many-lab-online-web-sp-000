class Artist
  attr_accessor :name
  @songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song = Song.new
    song.artist = self
    @songs << song
  end

  def songs
    Song.all.select{|song|song.artist == self}
  end

end
