class Guest

attr_reader :name, :fave_song
attr_accessor :money

  def initialize(name,money,fave_song)
    @name = name
    @money = money
    @fave_song = fave_song
  end

  def remove_money(cost)
    price = @money -= cost
  end




#
end
