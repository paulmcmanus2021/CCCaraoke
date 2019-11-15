require('minitest/autorun')
require('minitest/reporters')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Nick",10,"I Want It That Way")
    @guest2 = Guest.new("Ronnie",8,"Sweet Home Alabama")
    @guest3 = Guest.new("Billy",5,"Uptown Girl")
    @guest4 = Guest.new("Bruno",6,"Uptown Funk")
    @guest5 = Guest.new("Andre",7,"Hey Ya")
    @room1 = Room.new("Room 1",3,3)
    @room2 = Room.new("Room 2",3,5)
    @room3 = Room.new("Room 3",5,4)
  end

  def test_can_get_guest
    assert_equal("Ronnie", @guest2.name)
  end

  def test_can_get_room
    assert_equal("Room 3", @room3.name)
  end




#
end
