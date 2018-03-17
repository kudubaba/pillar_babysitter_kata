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
