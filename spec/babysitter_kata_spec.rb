require '../lib/babysitter_kata'

RSpec.describe Babysitter do
  it '.new creates a new instance of babysitter' do
    expect(Babysitter.new(18,22,3)).to be_an_instance_of Babysitter
  end
  it '#num1 should return the value of num1' do
    expect(Babysitter.new(18,22,3).num1).to eql(18)
  end
end
