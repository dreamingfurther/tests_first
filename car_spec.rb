require_relative './spec_helper'

describe Car do
  describe '#start' do
    it 'sets the car as running' do
      expect(Car.new.start).to eq 'running'
    end
  end

  describe '#status' do
    it 'returns the status of the car' do
      car = Car.new
      car.start
      expect(car.status).to eq 'running'
    end
  end
end
