require '../lib/babysitter_kata'

RSpec.describe Babysitter do
  let (:schedule1){Babysitter.new(18,22,3)}
  it '.new creates a new instance of babysitter' do
    expect(schedule1).to be_an_instance_of Babysitter
  end
  it '#num1 should return the value of num1' do
    expect(schedule1.num1).to eql(18)
  end
  it '#num2 should return the value of num2' do
    expect(schedule1.num2).to eql(22)
  end
  it '#num3 should return the value of num3' do
    expect(schedule1.num3).to eql(3)
  end
end

RSpec.describe Payscale do
  let (:payscale1){Payscale.new(12,8,16)}
  it '#add returns the sum of pay1, pay2, and pay3' do
    expect(payscale1.add).to eql(36)
  end
end
