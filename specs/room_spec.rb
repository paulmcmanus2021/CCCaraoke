require('minitest/autorun')
require('minitest/reporters')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require('pry')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Room 1",3,3)
    @room2 = Room.new("Room 2",3,5)
    @room3 = Room.new("Room 3",5,4)
    @song1 = Song.new("I Want It That Way","Backstreet Boys")
    @song2 = Song.new("Sweet Home Alabama","Lynryd Skynyrd")
    @song3 = Song.new("Uptown Girl","Billy Joel")
    @song4 = Song.new("Uptown Funk","Bruno Mars")
    @song5 = Song.new("Hey Ya","Outkast")
    @guest1 = Guest.new("Nick",4,"I Want It That Way")
    @guest2 = Guest.new("Ronnie",8,"Sweet Home Alabama")
    @guest3 = Guest.new("Billy",5,"Uptown Girl")
    @guest4 = Guest.new("Bruno",6,"Uptown Funk")
    @guest5 = Guest.new("Andre",7,"Hey Ya")
    @playlist = []
    @guests = []
  end

  def test_can_get_room
    assert_equal("Room 1", @room1.name)
  end

  def test_can_get_song_title
    assert_equal("Sweet Home Alabama", @song2.title)
  end

  def test_can_get_guest
    assert_equal("Andre", @guest5.name)
  end

  def test_check_occupancy
    @room1.check_occupancy
    assert_equal(0,@guests.length)
  end

  def test_check_in_guest
    @room2.check_in_guest(@guest2)
    assert_equal(@room2.guests[0], @guest2)
  end

  def test_check_out_guest
    @room2.check_in_guest(@guest1)
    @room2.check_in_guest(@guest2)
    @room2.check_in_guest(@guest3)
    @room2.check_out_guest(@guest2)
    assert_equal(@guest1, @room2.guests[0])
    assert_equal(@guest3, @room2.guests[1])
  end

  def test_add_song_to_room
    @room3.add_song_to_room(@song4)
    assert_equal(@song4.title, @room3.playlist[0].title)
  end

def test_max_occupancy
  # Fill room to max max_occupancy
  @room3.check_in_guest(@guest1)
  @room3.check_in_guest(@guest2)
  @room3.check_in_guest(@guest3)
  @room3.check_in_guest(@guest4)
  # Attempt to add another guest
  @room3.check_in_guest(@guest5)
  # Assert we return a max occupancy error
  assert_equal(@room3.guests.length, @room3.max_occupancy)
end

















#
end
