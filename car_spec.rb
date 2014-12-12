require_relative './spec_helper'

describe Car do
  describe '#start' do
    it 'sets the car as running' do
      expect(Car.new.start).to eq 'running'
    end
  end

  describe '#status' do
    let(:car) { Car.new }

    context 'when the car is running' do
      it 'returns the status of the car as running' do
        car.start
        expect(car.status).to eq 'running'
      end
    end

    context 'when the car is not running' do
      it 'returns the status of the car as off' do
        expect(car.status).to eq 'off'
      end
    end
  end
end
