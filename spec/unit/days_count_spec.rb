require 'days_count'

describe Counter do
  subject(:counter) { described_class.new }
  it 'returns how many days left until birthday' do
    expect(counter.count('23', "march")).to eq 184
  end
end
