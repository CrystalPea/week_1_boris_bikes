require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize( capacity = DEFAULT_CAPACITY )
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
    raise "Bike is broken" if @bikes.last.bike_state == "broken"
    bike = @bikes.last
    @bikes.pop
    bike
  end

  def dock(bike)
    raise "Docking station full" if full?
    @bikes << bike
    bike
  end

private
def full?
  @bikes.size >= DEFAULT_CAPACITY
end

def empty?
  @bikes == []
end

end
