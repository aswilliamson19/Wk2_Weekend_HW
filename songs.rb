class Songs

attr_reader :song_title, :artist, :genre

  def initialize(song_title, artist, genre)
    @song_title = song_title
    @artist = artist
    @genre = genre
  end

end
