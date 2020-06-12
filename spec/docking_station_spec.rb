require 'docking_station'

describe DockingStation do

  DEFAULT_CAPACITY = 20

  describe 'initialize' do
    it 'sets default capacity of DockingStation' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe '#release_bike' do

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
        DEFAULT_CAPACITY.times { subject.dock Bike.new }
        expect { subject.dock Bike.new }.to raise_error 'This station is full'
      end
  end
end

