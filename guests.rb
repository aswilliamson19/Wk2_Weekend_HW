class Guests

attr_reader :name, :cash, :fav_song

  def initialize(name, cash, fav_song)
    @name = name
    @cash = cash
    @fav_song = fav_song
  end

  def entry_payment(fee)
    @cash -= fee
  end


end
