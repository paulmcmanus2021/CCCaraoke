class Room

  attr_reader :name, :entry_fee, :max_occupancy, :guests
  attr_writer :playlist

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
    @guests.push(guest)
    @guests.length
  end

  def check_out_guest(guest)
    @guests.delete(guest)
    @guests.length
  end
#
end
