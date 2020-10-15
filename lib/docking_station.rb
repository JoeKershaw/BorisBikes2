require './lib/bike.rb'

class DockingStation
  attr_reader :bike_collection, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_collection = []
    @capacity = capacity
  end

  def release_bike
    fail "Error: No bike" if empty?
    # TODO: try with unless to see if it's empty
    bike = @bike_collection.pop
    fail "Error: Broken Bike" if !bike.working?
    bike
  end

  def dock(bike)
    fail "Error: Bike already in place" if full?
    @bike_collection.push(bike)
    # if @bikes_docked < @capacity
    #   @bikes_docked += 1
    "Bike docked!"
    # else
    #   "Find another docking station!"
    # end

  end
  private
  def full?
    @bike_collection.length >= DEFAULT_CAPACITY
  end
  def empty?
    @bike_collection.empty?
  end
end
