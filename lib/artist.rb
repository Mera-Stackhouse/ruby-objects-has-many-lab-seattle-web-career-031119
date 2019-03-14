require_relative './song'


class Artist

  attr_accessor :name

  @@count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def shovel(song)
    @songs << song
    @@count += 1
  end

  def add_song(song)
    song.artist = self
    # @songs << song
    # @@count += 1
    shovel(song)
  end

  def add_song_by_name(song_name)
    instance = Song.new(song_name)
    instance.artist = self
    # @songs << instance
    # @@count += 1
    shovel(instance)
  end

  def self.song_count
    @@count
  end



end
