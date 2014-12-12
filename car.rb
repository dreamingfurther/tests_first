class Car
  def start
    @status = 'running'
  end

  def status
    @status ||= 'off'
  end
end
