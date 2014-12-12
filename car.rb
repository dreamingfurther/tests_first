class Car
  def initialize
    @status = 'off'
    @lights = 'off'
  end

  def start
    @lights = 'on'
    @status = 'running'
  end

  def highbeams
    if status == 'running' && lights == 'on'
      @lights = 'highbeam'
    elsif status == 'running' && lights == 'highbeam'
      @lights = 'on'
    else
      'cannot turn on while car is off'
    end
  end

  attr_accessor :status, :lights
end
