require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')
require_relative('../karaoke_bar')

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(50)
  #   @guest1 = Guests.new('Calum', 50, 'My Chick bad')
  #   @guest2 = Guests.new('Michelle', 30, 'Single ladies')
  end

  def test_bar_has_money_in_the_till
    assert_equal(50, @bar.till)
  end

end
