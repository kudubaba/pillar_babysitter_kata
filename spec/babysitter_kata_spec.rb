require 'babysitter_kata'

RSpec.describe Schedule do
  let (:schedule1){Schedule.new(18,22,27)}
  it '.new creates a new instance of Schedule' do
    expect(schedule1).to be_an_instance_of Schedule
  end
  it '#start should return the value of start' do
    expect(schedule1.start).to eql(18)
  end
  it '#bedtime should return the value of bedtime' do
    expect(schedule1.bedtime).to eql(22)
  end
  it '#leave should return the value of leave' do
    expect(schedule1.leave).to eql(27)
  end
end

RSpec.describe Payscale do
  let (:payscale1){Payscale.new(12,8,16)}
  it '.new creates a new instance of Payscale' do
    expect(payscale1).to be_an_instance_of Payscale
  end
end

RSpec.describe Calculator do
  let (:schedule1){Schedule.new(18,23,27)}
  let (:payscale1){Payscale.new(12,8,16)}
  let (:calculator1){Calculator.new(schedule1, payscale1)}
  it ".new creates a new instance of Calculator" do
    expect(calculator1).to be_an_instance_of Calculator
  end
  it "#start_to_bedtime calculates time to bill between start and bedtime" do
    expect(calculator1.start_to_bedtime).to eq(5)
  end
  it "#bedtime_to_midnight calculates time to bill between bedtime and midnight" do
    expect(calculator1.bedtime_to_midnight).to eq(1)
  end
  it "#midnight_to_leave calculates time to bill between midnight and leave time." do
    expect(calculator1.midnight_to_leave).to eq(3)
  end
  it "starting_charge" do
    expect(calculator1.starting_charge).to eq(60)
  end
  it "bedtime_charge" do
    expect(calculator1.bedtime_charge).to eq(8)
  end
end
