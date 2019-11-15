require('minitest/autorun')
require('minitest/reporters')
require_relative('../song.rb')
require_relative('../room.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("I Want It That Way","Backstreet Boys")
    @song2 = Song.new("Sweet Home Alabama","Lynryd Skynyrd")
    @song3 = Song.new("Uptown Girl","Billy Joel")
    @song4 = Song.new("Uptown Funk","Bruno Mars")
    @song5 = Song.new("Hey Ya","Outkast")
  end

  def test_can_get_song_title
    assert_equal("I Want It That Way", @song1.title)
  end

  def test_can_get_song_artist
    assert_equal("Billy Joel", @song3.artist)
  end




#
end
