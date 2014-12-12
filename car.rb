class Car
  def initialize
    @status = 'off'
  end

  def start
    @status = 'running'
  end

  attr_accessor :status
end
