require 'days_count'

describe Counter do
  subject(:counter) { described_class.new }

  it 'returns how many days left until birthday' do
    allow(Date).to receive(:today).and_return(Date.parse("19/09/2018"))
    expect(counter.count("23", "march")).to eq 185
  end
end
