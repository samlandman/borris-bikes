require_relative 'bike'

class DockingStation
  attr_reader :bikes , :capacity

  DEFAULT_CAPACITY = 20

  def initialize
     @bikes = []
     @capacity = DEFAULT_CAPACITY
  end  

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
    #"Bike Released"
  end

  def dock(bike)
    fail 'This station is full' if full?
    @bikes << bike
  end

  private

  def full?
     @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end