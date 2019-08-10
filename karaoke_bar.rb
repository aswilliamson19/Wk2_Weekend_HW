class Karaoke_Bar

attr_reader :name, :till
attr_accessor :rooms

  def initialize(name, till)
    @name = name
    @rooms = []
    @till = till
  end

  def add_rooms(room)
    @rooms << room
  end

  def guest_payment(fee)
    @till += fee
  end

end
