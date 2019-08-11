class Guests

attr_reader :name, :cash, :fav_song

  def initialize(name, cash, fav_song)
    @name = name
    @cash = cash
    @fav_song = fav_song
  end

  def payment(total)
    @cash -= total
  end

  def fav_song(song)
    if @fav_song == @song
      return 'Yay, that\'s my favourite song!'
  end


end
