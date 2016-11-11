require 'bike'

describe Bike do

  it "tells us if a particular bike is broken" do
    expect(Bike.new("broken")).to have_attributes(:bike_state =>"broken")
  end

end
