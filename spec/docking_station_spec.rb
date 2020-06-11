require 'docking_station'

describe DockingStation do
  #describe 'initialize' do
    #it 'can be created with a certain number of bikes' do
      #docking_station = DockingStation.new(10)
      #expect(docking_station).to be_an_instance_of DockingStation
    #end
  #end
  describe '#release_bike' do
    #it 'returns release bike when bike released' do
      #docking_station = DockingStation.new(10)
      #expect(docking_station.release_bike).to eql('Bike Released')
    #end
    it { is_expected.to respond_to :release_bike }
    it 'gets a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eql bike
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
      end
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to include(bike)
  end

  it { is_expected.to respond_to(:bikes) }

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }
      it 'raises an error when the station is full' do
        20.times { subject.dock Bike.new }
        expect { subject.dock Bike.new }.to raise_error 'This station is full'
      end
  end
end

