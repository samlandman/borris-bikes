require 'docking_station'

describe DockingStation do
  describe 'initialize' do
    it 'can be created with a certain number of bikes' do
      docking_station = DockingStation.new(10)
      expect(docking_station).to be_an_instance_of DockingStation
    end
  end
  describe 'release_bike' do
    it 'returns release bike when bike released' do
      docking_station = DockingStation.new(10)
      expect(docking_station.release_bike).to eql('Bike Released')
    end
  end
#    describe 'docking station exists' do
#       it 'returns true' do
#        expect(DockingStation.exists?).to eql(TRUE)
#       end
#    end
end

