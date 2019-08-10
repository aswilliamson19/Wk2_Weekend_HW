require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../songs')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new('Power Ballads', 8)
    @room2 = Room.new('90s party', 10)
    @room3 = Room.new('Disco', 12)
    @song1 = Songs.new('My Chick Bad', 'Ludacris', 'Hip Hop')
    @song2 = Songs.new('Single Ladies', 'Beyonce', 'RnB')
    @song3 = Songs.new('Wannabe', 'Spice Girls', 'Pop')
    @song4 = Songs.new('Angels', 'Robbie Williams', 'Ballad')
    @song5 = Songs.new('I want it that way', 'Backstreet Boys', '90s')
    @song6 = Songs.new('Dancing Queen', 'ABBA', 'Disco')
    @song7 = Songs.new('Bohemian Rhapsody', 'Queen', 'Classic Rock')
    @guest1 = Guests.new('Calum', 50, 'My Chick bad')
    @guest2 = Guests.new('Michelle', 30, 'Single ladies')
    @guest3 = Guests.new('Danielle', 20, 'Wannabe')
  end

  def test_room_name
    assert_equal('Power Ballads', @room1.room_name)
  end

  def test_guest_max_capacity
    assert_equal(8, @room1.max_capacity)
  end

  def test_add_songs_to_a_playlist_for_a_room
    @room3.add_song(@song2)
    @room3.add_song(@song3)
    @room3.add_song(@song6)
    assert_equal(3, @room3.playlist.count)
  end

  def test_check_guests_in
    @room3.add_guest(@guest1)
    @room3.add_guest(@guest2)
    @room3.add_guest(@guest3)
    assert_equal(3, @room3.guests.count)
  end

  def test_check_guests_out
    @room3.add_guest(@guest1)
    @room3.add_guest(@guest2)
    @room3.add_guest(@guest3)
    @room3.check_guest_out(@guest1)
    assert_equal(2, @room3.guests.count)
  end

end
