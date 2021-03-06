class Schedule
  attr_accessor :start, :bedtime, :leave
  def initialize(start, bedtime, leave)
    @start = start
    @bedtime = bedtime
    @leave = leave
  end
end

class Payscale
  attr_accessor :startrate, :bedtimerate, :latenightrate
  def initialize(startrate, bedtimerate, latenightrate)
    @startrate = startrate
    @bedtimerate = bedtimerate
    @latenightrate = latenightrate
  end
end

class Calculator
  attr_accessor :startvalue, :bedtimevalue, :leavevalue, :startpay, :bedtimepay, :latenightpay
  def initialize(schedule, payscale)
    @startvalue = schedule.start
    @bedtimevalue = schedule.bedtime
    @leavevalue = schedule.leave
    @startpay = payscale.startrate
    @bedtimepay = payscale.bedtimerate
    @latenightpay = payscale.latenightrate
  end

  def start_to_bedtime
    unless @bedtimevalue >= 24
      @bedtimevalue - @startvalue
    else
      24 - @startvalue
    end
  end

  def starting_charge
    start_to_bedtime * @startpay
  end

  def bedtime_to_midnight
    if @bedtimevalue <= 23
      24 - @bedtimevalue
    else
      0
    end
  end

  def bedtime_charge
    bedtime_to_midnight * @bedtimepay
  end

  def midnight_to_leave
    unless @leavevalue <= 24
      @leavevalue - 24
    end
  end

  def late_night_charge
    midnight_to_leave * @latenightpay
  end
end
