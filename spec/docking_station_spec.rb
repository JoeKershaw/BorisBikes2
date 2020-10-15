require "docking_station"


RSpec.describe DockingStation do
  describe "#initialize" do
    it 'allows user to give a capacity value' do
      docking_station = DockingStation.new(2)
      expect(docking_station.capacity).to eq 2
    end
    it 'DEFAULT_CAPACITY = 20 when no value given' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end
  describe "#release_bike" do
    it "throws an error when there is no bike" do
      expect{subject.release_bike}.to raise_error(RuntimeError, "Error: No bike")
    end
    it "releases bike when there is a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "does not release a bike when it's broken" do
      bike = Bike.new
      bike.report
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error(RuntimeError, "Error: Broken Bike")
    end
  end
  describe "#dock" do
    it "docking station docks bike" do
      is_expected.to respond_to(:dock).with(1).argument
    end
    it "checks if docking was successful (feature test)" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq "Bike docked!"
    end
    it "throws an error when there is a bike" do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(Bike.new)
      end
      expect{subject.dock(Bike.new)}.to raise_error(RuntimeError, "Error: Bike already in place")
    end
  end
  describe "#bike_collection" do
    it "bike_collection attribute" do
      is_expected.to respond_to :bike_collection
    end
    it "bike_collection has no bikes" do
      expect(subject.bike_collection).to eq []
    end
  end


end
