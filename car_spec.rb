require_relative './spec_helper'

describe Car do
  let(:car) { Car.new }

  describe '#start' do
    it 'sets the car as running' do
      expect(car.start).to eq 'running'
    end
  end

  describe '#status' do
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
      it 'the lights are on' do
        car.start
        expect(car.lights).to eq 'on'
      end
    end

    context 'when the car is not running' do
      it 'the lights are off' do
        expect(car.lights).to eq 'off'
      end
    end
  end

  describe '#highbeams' do
    context 'when the car is running' do
      context 'when the highbeams are off' do
        it 'turns the highbeams on' do
          car.start
          car.highbeams
          expect(car.lights).to eq 'highbeam'
        end
      end

      context 'when the highbeams are on' do
        it 'turns the highbeams off' do
          car.start
          car.highbeams
          car.highbeams
          expect(car.lights).to eq 'on'
        end
      end
    end

    context 'when the car is off' do
      it 'tells us the car is off so we cant turn highbeams on' do
        expect(car.highbeams).to eq 'cannot turn on while car is off'
      end
    end
  end
end
