require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it "gets a bike" do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it "checks it is working" do
    bike = subject.dock(Bike.new)
    expect(bike).to be_working
  end

 it "docking station docks bikes" do
   bike = subject.dock(Bike.new)
   docked_bike = subject.dock(bike)
 end

it { is_expected.to respond_to(:bike) }

it "doesn't release a bike if none are available" do
  expect { DockingStation.new.release_bike }.to raise_error("No bikes available")
end

end
