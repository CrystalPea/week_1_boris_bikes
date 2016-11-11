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
  20.times { subject.dock(Bike.new) }
  expect { subject.dock(Bike.new) }. to raise_error("Docking station full")
end

end
