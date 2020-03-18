class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    if hours < 10
      hours = '0' + hours.to_s
    end
    @seconds = @seconds % 3600
    if @seconds >= 60
      minutes = @seconds / 60
      @seconds = @seconds % 60
      if minutes < 10
        minutes = '0' + minutes.to_s
      end
    else
      minutes = '00'
    end
    if @seconds < 10
      @seconds = '0' + @seconds.to_s
    end
    hours.to_s + ':' + minutes.to_s + ':' + @seconds.to_s
  end

end