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
    docked_bike = subject.dock(Bike.new)
 end

  it { is_expected.to respond_to(:bike) }

  it "doesn't release a bike if none are available" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  it "does not accept a bike if full" do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
  end

  it { expect(DockingStation).to respond_to(:new).with(1).argument }

  it "allows the user to set a number of bikes when creating a new docking station" do
    expect(DockingStation.new(25).capacity).to eq 25
  end

  it "if no capacity is prodivded, new dockings station should be initialized with default capacity of 20" do
    expect(DockingStation.new.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

end
