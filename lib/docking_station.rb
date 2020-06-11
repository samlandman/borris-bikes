require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
     @bikes = []
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
     @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end