require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it "gets a bike" do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end

  it "checks it is working" do
    bike = DockingStation.new.release_bike
    expect(bike).to be_working
  end

 it "docking station docks bikes" do
   bike = DockingStation.new.release_bike
   docked_bike = subject.dock(bike)
 end

it "sees if a bike has been docked" do
  
end

end
