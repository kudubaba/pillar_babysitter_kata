require '../lib/babysitter_kata'

RSpec.describe Babysitter do
  it '.new creates a new instance of babysitter' do
    expect(Babysitter.new(18,22,3)).to be_an_instance_of Babysitter
  end
end
