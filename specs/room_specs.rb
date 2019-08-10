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
    @room3 = Room.new('Disco', 3)
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
    @guest4 = Guests.new('Michael', 30, 'Angels')
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

  def test_check_room_guest_capacity__full
    @room3.add_guest(@guest1)
    @room3.add_guest(@guest2)
    @room3.add_guest(@guest3)
    @room3.add_guest(@guest4)
    assert_equal('Sorry, room is full.', @room3.guest_capacity(@guest4))
  end

  def test_check_room_guest_capacity__under_capacity
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest4)
    assert_equal('Welcome to Your Song karaoke bar! Have a great time!', @room1.guest_capacity(@guest4))
  end

end
