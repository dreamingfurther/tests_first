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

  describe '#lights' do
    context 'when the car is running' do
      xit 'the lights are on' do

      end
    end

    context 'when the car is not running' do
      xit 'the lights are off' do

      end
    end
  end

  describe '#highbeams' do
    context 'when the car is running' do
      context 'when the highbeams are off' do
        xit 'turns the highbeams on' do

        end
      end

      context 'when the highbeams are on' do
        xit 'turns the highbeams off' do

        end
      end
    end

    context 'when the car is off' do
      xit 'tells us the car is off so we cant turn highbeams on' do

      end
    end
  end
end
