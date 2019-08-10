require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../songs')

class Karaoke_BarTest < MiniTest::Test

  def setup
    @karaoke_bar = Karaoke_Bar.new('Your Song', 100)
    @room1 = Room.new('Power Ballads', 8)
    @room2 = Room.new('90s party', 10)
    @room3 = Room.new('Disco', 12)
    @guest1 = Guests.new('Calum', 50, 'My Chick bad')
    @guest2 = Guests.new('Michelle', 30, 'Single ladies')
    @guest3 = Guests.new('Danielle', 20, 'Wannabe')
  end

  def test_karaoke_bar_name
    assert_equal('Your Song', @karaoke_bar.name)
  end

  def test_karaoke_bar_has_money_in_till
    assert_equal(100, @karaoke_bar.till)
  end

  def test_karaoke_bar_has_rooms_to_rent
    @karaoke_bar.add_rooms(@room1)
    assert_equal(1, @karaoke_bar.rooms.count)
  end



end
