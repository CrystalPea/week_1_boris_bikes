require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike, :capacity

  def initialize( capacity = 20 )
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
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
