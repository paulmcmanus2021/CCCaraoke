class Room

  attr_reader :name, :entry_fee, :max_occupancy
  attr_writer :playlist, :guests

  def initialize(name,entry_fee,max_occupancy)
    @name = name
    @entry_fee = entry_fee
    @max_occupancy = max_occupancy
    @guests = []
    @playlist = []
  end


#
end
