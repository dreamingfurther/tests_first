require_relative './spec_helper'

describe Car do
  describe '#start' do
    it 'sets the car as running' do
      expect(Car.new.start).to eq 'running'
    end
  end
end
