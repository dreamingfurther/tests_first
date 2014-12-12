class Car
  def initialize
    @status = 'off'
    @lights = 'off'
  end

  def start
    @lights = 'on'
    @status = 'running'
  end

  attr_accessor :status, :lights
end
