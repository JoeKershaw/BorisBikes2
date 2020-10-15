require './lib/bike.rb'

class DockingStation
  attr_reader :bike_collection

  def initialize
    @bike_collection = []
    #bikes_docked
    @capacity = 20
  end

  def release_bike
    fail "Error: No bike" if empty?
    # TODO: try with unless to see if it's empty
    @bike_collection.pop

    # # if @bikes_docked > 0
    # #   @bikes_docked -= 1
    #   bike = Bike.new
    # # else
    # #   "There are no bikes"
    # # end
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
    # if dockingstation holds a  @bike already then throw error message saying it's full
    # otherwise allow the bike to be docked
  end
  private
  def full?
    @bike_collection.length >= @capacity
  end
  def empty?
    @bike_collection.empty?
  end
end
