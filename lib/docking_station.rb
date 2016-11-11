require_relative 'bike'

class DockingStation

  def release_bike
    raise "No bikes available" if @bike == nil
    @bike
  end

  def dock(bike)
    raise "Docking station full" if @bike != nil
    @bike = bike
  end

attr_reader :bike

end
