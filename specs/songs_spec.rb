require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new('My Chick Bad', 'Ludacris', 'Hip Hop')
    @song2 = Songs.new('Single Ladies', 'Beyonce', 'RnB')
    @song3 = Songs.new('Wannabe', 'Spice Girls', 'Pop')
    @song4 = Songs.new('Angels', 'Robbie Williams', 'Ballad')
    @song5 = Songs.new('I want it that way', 'Backstreet Boys', '90s')
    @song6 = Songs.new('Dancing Queen', 'ABBA', 'Disco')
    @song7 = Songs.new('Bohemian Rhapsody', 'Queen', 'Classic Rock')
  end

  def test_song_title
    assert_equal('Single Ladies', @song2.song_title)
  end

  def test_song_artist
    assert_equal('Queen', @song7.artist)
  end

  def test_song_genre
    assert_equal('Pop', @song3.genre)
  end


end
