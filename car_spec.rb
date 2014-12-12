require_relative './spec_helper'

describe Car do
  let(:car) { Car.new }

  describe 'airbag_on?' do
    let(:seat) { double }
    let(:seat_belt) { double }
    let(:passenger) { double }

    before do
      allow(Seat).to receive(:new).and_return(seat)
      allow(seat).to receive(:seat_belt).and_return(seat_belt)
      allow(seat_belt).to receive(:passenger).and_return(passenger)
      allow(passenger).to receive(:weight).and_return(weight)
    end

    context 'when the passenger weight is over 50' do
      let(:weight) { 50 }

      it 'returns true' do
        expect(car.airbag_on?(seat)).to be true
      end
    end

    context 'when the passenger weight is under 50' do
      let(:weight) { 49 }

      it 'returns false' do
        expect(car.airbag_on?(seat)).to be false
      end
    end
  end

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
      before do
        car.start
      end

      context 'when the highbeams are off' do
        it 'turns the highbeams on' do
          expect(car.highbeams).to eq 'highbeam'
        end
      end

      context 'when the highbeams are on' do
        it 'turns the highbeams off' do
          car.highbeams
          expect(car.highbeams).to eq 'on'
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
