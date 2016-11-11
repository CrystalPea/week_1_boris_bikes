require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
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
  @bikes.size >= 20
end

def empty?
  @bikes == []
end

end
