require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../songs')

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new('Calum', 50, 'My Chick bad')
    @guest2 = Guests.new('Michelle', 30, 'Single ladies')
    @guest3 = Guests.new('Danielle', 20, 'Wannabe')
  end

  def test_guest_name
    assert_equal('Calum', @guest1.name)
  end

  def test_guest_has_money
    assert_equal(30, @guest2.cash)
  end

  def test_guests_favourite_song
    assert_equal('Wannabe', @guest3.fav_song)
  end


end
