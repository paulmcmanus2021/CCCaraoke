class Room

  attr_reader :name, :entry_fee, :max_occupancy, :guests
  attr_accessor :playlist

  def initialize(name,entry_fee,max_occupancy)
    @name = name
    @entry_fee = entry_fee
    @max_occupancy = max_occupancy
    @guests = []
    @playlist = []
  end

  def check_occupancy
    @guests.length
  end

  def check_in_guest(guest)
    # Ensure we are not at maximum occupancy
    if @guests.length >= @max_occupancy
      p "No more space."
    end
    #and the guest can afford the room
    if guest.money < @entry_fee
      p "Not enough money"
    end

    # If the room has space and can afford = true
    # add them to the room
    @guests.push(guest)
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song_to_room(song)
    @playlist.push(song)
    @playlist.length
  end





#
end
