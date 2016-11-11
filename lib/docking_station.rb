require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if @bikes == []
    bike = @bikes.last
    @bikes.pop
    bike
  end

  def dock(bike)
    raise "Docking station full" if @bikes.size == 20
    @bikes << bike
    bike
  end

attr_reader :bike

end
