require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new('Calum', 50, 'My Chick bad')
    @guest2 = Guests.new('Michelle', 30, 'Single ladies')
    @guest3 = Guests.new('Danielle', 20, 'Wannabe')
    @song = Songs.new('Single Ladies', 'Beyonce', 'RnB')
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

  def test_guest_can_make_payments
    @guest1.payment(10)
    assert_equal(40, @guest1.cash)
  end

  def test_if_guests_recognise_their_fav_song
    @guest1.fav_song(@song)
    assert_equal('Yay, that\'s my favourite song!', @guest1.fav_song)
  end

end
