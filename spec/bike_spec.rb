require 'bike'

describe Bike do
  describe 'working?' do
    it 'bike responds to bike working?' do
      bike = Bike.new
      expect(bike).to respond_to :working?
    end
  end
end