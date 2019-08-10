class Room

attr_reader :room_name, :max_capacity
attr_accessor :playlist, :guests

  def initialize(room_name, max_capacity)
    @room_name = room_name
    @max_capacity = max_capacity
    @playlist = []
    @guests = []
  end

  def add_song(song)
    @playlist << song
  end

  def add_guest(guest)
    @guests << guest
  end

  def check_guest_out(guest)
    @guests.delete(guest)
  end

  def guest_capacity(guest)
      if @guests.count > @max_capacity
        return 'Sorry, room is full.'
      else
        return 'Welcome to Your Song karaoke bar! Have a great time!'
      end
    end


  end
