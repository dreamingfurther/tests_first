class Seat
end

class Car
  def airbag_on?(seat)
    seat.seat_belt.passenger.weight >= 50
  end

  def seat
    @seat ||= Seat.new
  end

  def initialize
    @status = 'off'
    @lights = 'off'
  end

  def start
    @lights = 'on'
    @status = 'running'
  end

  def highbeams
    if running? && !highbeams_on?
      @lights = 'highbeam'
    elsif running? && highbeams_on?
      @lights = 'on'
    else
      'cannot turn on while car is off'
    end
  end

  attr_accessor :status, :lights

  private

  def running?
    status == 'running'
  end

  def highbeams_on?
    lights == 'highbeam'
  end
end
